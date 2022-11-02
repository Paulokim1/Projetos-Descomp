assembly = 'ASM.txt' #Arquivo de entrada que contém o assembly
destinoBIN = 'BIN.txt' #Arquivo de saída que contém o binário formatado para VHDL

#definição dos mnemônicos e seus
#respectivos OPCODEs (em Hexadecimal)
mne =	{ 
       "NOP":   "0000",
       "LDA":   "0001",
       "SOMA":  "0010",
       "SUB":   "0011",
       "LDI":   "0100",
       "STA":   "0101",
       "JMP":   "0110",
       "JEQ":   "0111",
       "CEQ":   "1000",
       "JSR":   "1001",
       "RET":   "1010",
       "ANDI": "1011",
}


reg_mne = {
    "R0" : "00",
    "R1" : "01",
    "R2" : "10",
    "R3" : "11"
}

# Dicionário responsavel em armazenar as posicoes de memoria de cada label
labels = {}

#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits)
def  converteArroba(line):
    line = line.split('@')

    if line[1] in labels.keys():
        line[1] = hex(int(labels[line[1]]))[2:].upper().zfill(3)
        line = ''.join(line)
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(3)
        line = ''.join(line)
    return line
 
#Converte o valor após o caractere cifrão'$'
#em um valor hexadecimal de 2 dígitos (8 bits) 
def  converteCifrao(line):
    line = line.split('$')
    line[1] = hex(int(line[1]))[2:].upper().zfill(3)
    line = ''.join(line)
    return line
        
#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line

#Remove o label a partir do caractere ':'
def defineLabel(line):
    if ':' in line:
        label = line.split(":")[0]
        return label
    else:
        return None

#Remove o label a partir do caractere ':'
def defineRegistrador(line):
    instructions = line.split(" ")

    if len(instructions) >= 3:
        reg = instructions[1]
        return reg
    else:
        return None

#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    # line[0] = mne[line[0]]
    line = "".join(line)
    return line

def split_opcode(inst):

    if ("@" in inst):
        splitted_inst = inst.split("@")
        opcode = splitted_inst[0]
        value = "@" + splitted_inst[1]
        return opcode, value

    elif ("$" in inst):
        splitted_inst = inst.split("$")
        opcode = splitted_inst[0]
        value = "$" + splitted_inst[1]
        return opcode, value

    else:
        return inst, ""



########################################              PROGRAMA PRINCIPAL              ########################################
with open(assembly, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas
    
with open(destinoBIN, "w") as f:  #Abre o destino BIN

    #Vamos identificar primeiro os labels e salva-los no dicionario
    cont = 0 #Cria uma variavel para contagem
    for line in lines:
        #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            cont -= 1
            #print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug

        #Se a linha for válida para conversão, executa
        else:
            label = defineLabel(line)
            if label != None:
                labels[label] = cont
                cont -= 1
        cont += 1
    
    # print(f"<<<As labels são: {labels}>>>")
            

    #Agora, vamos identificar as instrucoes e comentarios
    cont = 0 #Reset do contator
    for line in lines:        
        
        #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            # print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
        
        #Label não é nem instrução ou comentário, logo, não precisamos extrair nada deste line
        elif ":" in line:
            continue
        
        #Se a linha for válida para conversão, executa
        else:
            #Exemplo de linha => 1. JSR @14 #comentario1
            comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
            instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14

            reg = defineRegistrador(instrucaoLine)
            if reg:
                l = instrucaoLine.split()
                l.remove(reg)
                instrucaoLine = " ".join(l)
            else:
                reg = "R0"

            instrucaoLine = trataMnemonico(instrucaoLine) #Trata o mnemonico. Ex(JSR @14): x"9" @14

            opcode, value = split_opcode(instrucaoLine)

            if '@' in value: #Se encontrar o caractere arroba '@' 
                convertedValue = converteArroba(value) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                    
            elif '$' in value: #Se encontrar o caractere cifrao '$' 
                convertedValue = converteCifrao(value) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                
            else: #Senão, se a instrução nao possuir nenhum imediato, ou seja, nao conter '@' ou '$'
                convertedValue = "000"    
            
            lineNoComment = 'tmp(' + str(cont) + ') := ' + opcode + " & " + reg + " & '" + convertedValue[0] + "' & x" + '"' + convertedValue[1:] + '";'  #Formata para o arquivo BIN
            line = lineNoComment + (35 - len(lineNoComment))*" " + '\t-- ' + comentarioLine + '\n'
                                                                                                       #Entrada => 1. JSR @14 #comentario1
                                                                                                       #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1
                                        
            cont+=1 #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line) #Escreve no arquivo BIN.txt
            
            print(line,end = '') #Print apenas para debug