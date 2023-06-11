#String: Uma variável do tipo string contém um valor de texto, como um nome, uma descrição ou um endereço.

variable "name" {
  type    = string
  default = "John Doe"
}


#Number: Uma variável do tipo number contém um valor numérico, como uma contagem, uma porta ou uma versão.

variable "port" {
  type    = number
  default = 8080
}

#Bool: Uma variável do tipo bool contém um valor booleano, que pode ser verdadeiro ou falso.

variable "enable_logging" {
  type    = bool
  default = true
}

#______________________________________________________________________________________________

#List: Uma variável do tipo list contém uma lista ordenada de valores, como uma lista de 
#endereços IP ou uma lista de nomes de servidores.

variable "servers" {
  type    = list(string)
  default = ["server1", "server2", "server3"]
}

resource "local_file" "sample_res" {
  filename = var.name
  content  = var.servers[0]
}

#obs: após criar esse recurso ocm essa varivael , no terminal aparece, 
#o identificador único atribuído ao recurso local_file.sample_res criado no Terraform.


#   Enter a value: yes

# local_file.sample_res: Creating...
# local_file.sample_res: Creation complete after 0s [id=68cf5e3251379179122fa88e761e2acd5577c249]

# a contagem da string é  [0] para o server1 / [1] para o server2  e etc ;

#_____________________________________________________-

#Map: Uma variável do tipo map contém um conjunto de pares chave-valor, onde a chave é uma 
#string e o valor pode ser de qualquer tipo. Isso é útil para configurar opções ou 
#parâmetros específicos.

variable "options" {
  type = map(any)
  default = {
    timeout = 30
    retries = 3
  }
}

resource "local_file" "sample_res1" {
  filename = var.name
  content  = var.options["timeout"]
}

#Object: Uma variável do tipo object contém uma estrutura de dados personalizada com atributos 
#nomeados e tipos específicos.

variable "user" {
  type = object({
    name  = string
    email = string
    age   = number
  })
  default = {
    name  = "John Doe"
    email = "john.doe@example.com"
    age   = 30
  }
}
#_________________________________________________________-

#"Tuple" (tupla). Uma tupla é uma estrutura de dados que pode conter valores 
#de diferentes tipos em uma ordem específica. Aqui está um exemplo de uso do tipo de 
#variável tuple no Terraform:

variable "person" {
  type    = tuple([string, number, bool])
  default = ["John Doe", 30, true]
}

#Lembrando que a ordem definida no type do tuple, tem que ser a ordem dos elementos
#passdos no default 
#___________________________________________________

#SET é  uma coleção de valores únicos, onde a ordem dos elementos não é significativa. 
#Aqui está um exemplo de uso do tipo de variável set no Terraform:


variable "tags" {
  type    = set(string)
  default = ["tag1", "tag2", "tag3"]
}




# --------------------######## USING VARIABLES ########--------------------# 
# Essas opções abaixo mostram diferentes maneiras de fornecer um valor para a variável: 


variable "filename" {
  type    = string #var.filename 
  default = "sample.txt"
}

# variable filename {}: Essa declaração define a variável filename sem especificar o tipo 
# ou valor padrão. Nesse caso, quando você executa o comando terraform apply, o Terraform 
# solicitará que você forneça um valor para a variável.

#variable filename {}           

# terraform apply -var "filename=sample.txt": Esse comando terraform apply é usado para aplicar 
# as alterações definidas em sua configuração do Terraform. Com a opção -var, você está 
# fornecendo explicitamente um valor para a variável filename no momento da execução.

#    ---------> terraform apply -var "filename=sample.txt"

# export TF_VAR_filename=sample.txt: Essa linha define uma variável de ambiente chamada 
# TF_VAR_filename com o valor "sample.txt". Essa abordagem permite que você defina variáveis 
# de ambiente que podem ser usadas pelo Terraform durante a execução. Nesse caso, a variável 
# TF_VAR_filename seria equivalente à variável filename em sua configuração do Terraform.

#    ---------> export TF_VAR_filename=sample.txt"


# --------------------######## VARIABLE DEFINIION FILE ########--------------------# 

# Os arquivos mencionados são arquivos de definição de variáveis no Terraform. Eles são 
# usados para armazenar os valores das variáveis ​​usadas em sua configuração do Terraform. 
# Aqui está uma explicação sobre cada um desses arquivos:



# terraform.tfvars ou terraform.tfvars.json: Esses arquivos são usados para definir 
# os valores das variáveis ​​em formato de arquivo. O Terraform procura automaticamente 
# esses arquivos e carrega suas definições de variáveis. No caso do terraform.tfvars, 
# o formato é plano (HCL), enquanto o terraform.tfvars.json usa o formato JSON. 
# Você pode escolher usar qualquer um deles, dependendo de suas preferências.

# terraform.tfvars
# terraform.tfvars.json

#_____________________________________________________________________________

#*.auto.tfvars ou *.auto.tfvars.json: Esses arquivos seguem o mesmo conceito dos arquivos terraform.tfvars 
# mencionados anteriormente, mas têm uma diferença importante. O Terraform reconhece automaticamente os 
# arquivos que correspondem ao padrão *.auto.tfvars no diretório do projeto. Isso significa que você 
# não precisa carregá-los manualmente usando a opção -var-file do comando terraform apply ou terraform plan. 
# Eles são carregados automaticamente sempre que você executa comandos do Terraform no diretório do projeto.


# *.auto.tfvars
# *.auto.tfvars.json

#____________________________________________________________________-

# A declaração 


# --------> export TF_VAR_filename=sample.txt => é um comando usado para definir uma variável 
# de ambiente chamada TF_VAR_filename com o valor "sample.txt".
# É importante observar que as variáveis de ambiente definidas dessa maneira são 
# específicas para a sessão atual do terminal em que o comando export foi executado. 
# Elas não persistem além da sessão atual e precisariam ser definidas novamente em 
# sessões subsequentes ou em outros ambientes.

# ---------> terraform.tfvars => é um arquivo de definição de variáveis usado pelo Terraform. Nele, você 
# pode definir os valores das variáveis ​​usadas em sua configuração do Terraform. O Terraform procura 
# automaticamente por esse arquivo no diretório do projeto e carrega as definições de variáveis dele.

# --------->  variable.auto.tfvars => O arquivo variable.auto.tfvars segue um padrão específico e é outro 
#arquivo de definição de variáveis usado pelo Terraform. O Terraform também procura automaticamente por 
# arquivos que correspondam ao padrão *.auto.tfvars no diretório do projeto e carrega as definições 
# de variáveis deles. Esse arquivo é útil para definir variáveis que podem ser usadas automaticamente 
# sem a necessidade de especificar o arquivo de definição de variáveis no comando terraform apply. 
# Assim como o terraform.tfvars, ele é um arquivo de formato plano (HCL) onde você pode definir os 
# valores das variáveis.




