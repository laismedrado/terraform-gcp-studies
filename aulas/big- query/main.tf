resource "google_bigquery_dataset" "bd_ds" {
  dataset_id = "ds_from_tf"

}

resource "google_bigquery_table" "table_tf" {
  table_id   = "table_from_tf"
  dataset_id = google_bigquery_dataset.bd_ds.dataset_id
}

# Esse arquivo de configuração do Terraform cria um conjunto de dados (dataset) e 
# uma tabela no BigQuery. No trecho resource "google_bigquery_dataset" "bd_ds", um recurso chamado 
# "google_bigquery_dataset" é definido com o identificador "bd_ds". Esse recurso cria um conjunto 
# de dados no BigQuery com o ID "ds_from_tf". No trecho resource "google_bigquery_table" "table_tf", outro 
# recurso é definido para criar uma tabela no BigQuery. O recurso tem o identificador "google_bigquery_table"
# e é associado ao conjunto de dados criado anteriormente. A tabela é definida com o ID "table_from_tf" e 
# a propriedade dataset_id é configurada para usar o valor google_bigquery_dataset.bd_ds.dataset_id, que 
# representa o ID do conjunto de dados criado. Em resumo, esse arquivo de configuração do Terraform está 
# criando um conjunto de dados chamado "ds_from_tf" e uma tabela chamada "table_from_tf" dentro desse conjunto 
# de dados no BigQuery. O Terraform permite que se defina uma infraestrutura como código, o que facilita a criação, 
# configuração e gerenciamento do BigQuery por meio de automação e controle de versão.