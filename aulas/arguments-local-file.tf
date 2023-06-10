provider "google" {
  project = "terraform-gcp-studies"
  region  = "northamerica-northeast1"
}

#Esses são os argumentos disponíveis no recurso local_file do Terraform. 

# - content: Esse argumento é usado para fornecer o conteúdo diretamente 
# como uma string. Pode ser útil quando você deseja fornecer o conteúdo diretamente 
# na configuração do Terraform, em vez de ler de um arquivo externo. 

resource "local_file" "example" {
  content = "Este é o conteúdo do arquivo"
}

# - sensitive_content:Similar ao content, esse argumento é usado para fornecer 
# conteúdo sensível como uma string. A diferença é que o conteúdo é tratado como 
# sensível e não será exibido em saídas ou em registros. Exemplo:

resource "local_file" "example" {
  sensitive_content = "Conteúdo sensível"
}


# - content_base64: Esse argumento é usado para fornecer o conteúdo em formato base64. 
# É útil quando você precisa codificar o conteúdo em base64 para determinados casos de uso. 
# Exemplo:

resource "local_file" "example" {
  content_base64 = base64encode("Conteúdo em base64")
}


# - filename:Esse argumento é usado para especificar o caminho para o arquivo local que você deseja ler. 
# O Terraform lerá o conteúdo do arquivo especificado. Exemplo:

resource "local_file" "example" {
  filename = "caminho/para/arquivo.txt"
}


# - file_permission: Esse argumento é usado para definir permissões de arquivo para o arquivo local 
# criado pelo recurso local_file. Pode ser especificado como uma sequência de permissões no formato 
# numérico (ex: "0644"). Exemplo:

resource "local_file" "example" {
  filename         = "caminho/para/arquivo.txt"
  file_permission  = "0644"
}


# directory_permission: Esse argumento é usado para definir permissões de diretório
#  para o diretório pai do arquivo local criado pelo recurso local_file. Pode ser especificado
#  como uma sequência de permissões no formato numérico (ex: "0755"). Exemplo:

resource "local_file" "example" {
  filename               = "caminho/para/arquivo.txt"
  directory_permission   = "0755"
}

