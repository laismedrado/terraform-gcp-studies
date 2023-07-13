# Em resumo, esse trecho de código cria uma instância do Google Cloud Spanner 
# com o nome "spanner_tf", utilizando a configuração regional da Ásia do Sul 1. 
# A instância terá um único nó e será rotulada com o rótulo "env" definido como "learningtf".

resource "google_spanner_instance" "spanner_tf" {
  name         = "spannertf"
  config       = "regional-asia-south1"
  display_name = "spanner from tf"
  num_nodes    = 1
  labels = {
    "env" = "learningtf"

  }
}

# criação de  banco de dados chamado "db1" 
# dentro da instância do Google Cloud Spanner especificada. Ele associa o banco de dados 
# à instância por meio do atributo instance, que recebe o nome da instância criada anteriormente.

resource "google_spanner_database" "db" {
  name     = "db1"
  instance = google_spanner_instance.spanner_tf.name
}

# configuração de recurso do Terraform para criar uma instância de banco de dados 
# MySQL no Google Cloud SQL.

resource "google_sql_database_instance" "my_sql_from_tf" {
  name                = "mysql-from-tf"
  deletion_protection = false
  region              = "us-central1"
  settings {
    tier = "db"
  }
}

#configuração de recurso do Terraform para criar um usuário no Google Cloud SQL.
resource "google_sql_user" "myuser" {
  name     = "ankit"
  password = "ankit@123"
  instance = google_sql_database_instance.my_sql_from_tf.name
}