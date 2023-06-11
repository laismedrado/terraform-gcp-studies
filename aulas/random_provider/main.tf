# A configuração  cria um recurso chamado "rint" 
# do tipo "random_integer". Esse recurso é fornecido pelo provedor "random" 
# embutido no Terraform. Ele permite gerar um número inteiro aleatório dentro 
# de um determinado intervalo.


resource "random_integer" "rint" {
  min = 80
  max = 200
}

output "rint" {
  value = random_integer.rint.result
}

# A configuração seguinte  cria um recurso chamado "rstring" do tipo 
# "random_string". Esse recurso também é fornecido pelo provedor "random" 
# embutido no Terraform. Ele permite gerar uma sequência de caracteres 
# aleatória com um comprimento especificado. Mas que só é vista
# após o aplly

resource "random_string" "rstring" {
  length = 15
}
output "rstring" {
  value = random_string.rstring.result
}



#docuemntação https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
#obs: pode usar qualquer nome válido no lugar de "rint" 
#para nomear so recurso random_integer. O nome "rint" é 
#apenas um exemplo usado no meu código.

