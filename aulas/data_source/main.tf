data "local_file" "name" {
  filename = "sample1.txt"
}

output "name1" {
  value = data.local_file.name.content
}

# O bloco data no Terraform é usado para consultar dados externos, 
# como provedores de nuvem, APIs ou sistemas de arquivos locais, 
# e usar esses dados em seu plano de infraestrutura.

# No caso desse exemplo, o bloco local_file é usado para ler o conteúdo 
# do arquivo "sample1.txt" localmente. O atributo filename especifica 
# o nome do arquivo a ser lido. E o ouput
#o bloco output define uma saída chamada name1. O valor dessa saída é definido 
# como data.local_file.name.content. Isso significa que o valor da saída name1 
# será o conteúdo do arquivo lido pelo bloco data.local_file.name.


# no termirnal : -------------------->

# Changes to Outputs:
#   + name1 = "This is from datasource"


