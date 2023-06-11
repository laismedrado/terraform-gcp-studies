

resource "local_file" "name1" {
  filename = "explicit.txt"
  content  = "This is random String from RP: ${random_string.name2.id}"
}

resource "random_string" "name2" {
  length = 10
}


resource "local_file" "name3" {
  filename   = "implicit.txt"
  content    = "I love random text ${random_string.name2.id}"
  depends_on = [random_string.name2]
}

# A interpolação ${random_string.name2.id} é usada para acessar o valor da 
# propriedade id do recurso random_string.name2. O conteúdo do arquivo é 
# definido como "implicit.txt".
# Quando você executa o comando terraform apply com essa configuração, 
# o Terraform cria o arquivo local com o nome gerado dinamicamente usando 
# o valor aleatório gerado pelo recurso random_string.name2.
