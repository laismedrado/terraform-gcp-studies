output "name" {
  value = random_string.name2.id
}

#Quando você define uma saída (output) no Terraform, 
#ela será exibida no terminal após a execução do comando terraform apply