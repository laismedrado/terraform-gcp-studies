resource "random_integer" "name" {
  min = 0
  max = 500

  lifecycle {
    create_before_destroy = true

  }
}

# o bloco lifecycle é utilizado  para definir o atributo create_before_destroy como true. 
# Isso significa que, durante a atualização do recurso, o Terraform primeiro criará uma 
# nova instância do recurso com os novos valores e, em seguida, destruirá a instância antiga. 
# Essa abordagem de "criar antes de destruir" ajuda a minimizar o tempo de indisponibilidade, 
# pois o novo recurso é criado antes de remover o antigo,

# no temrinal : 

# random_integer.name: Creating...
# random_integer.name: Creation complete after 0s [id=239]
# random_integer.name (deposed object d3f8ab1a): Destroying... [id=1]
# random_integer.name: Destruction complete after 0s

#_______________________________________________________

resource "random_integer" "name2" {
  min = 0
  max = 400

  lifecycle {
    prevent_destroy = true

  }
}


#No temrinal :

# Error: Instance cannot be destroyed
# │ 
# │   on main.tf line 24:
# │   24: resource "random_integer" "name2"{
# │ 


#_____________________________________________________________________


resource "random_integer" "name3" {
  min = 200
  max = 400

  lifecycle {
    ignore_changes = [min]

  }
}


# No exemplo fornecido, o bloco lifecycle está usando o atributo ignore_changes para 
#especificar que a alteração do atributo min não deve acionar uma atualização no recurso.
# No terminal : 

#No changes. Your infrastructure matches the configuration., mesmo eu mudando os valores do "min"
# posso coloca rmais de 2 atributos dentro 

# ignore_changes = [min, max] n ocaso desse recurso do tipo "random_integer"


#___________________________________________________________________________-