resource "google_project_service" "bigtable" {
  project = var.project
  service = "bigtable.googleapis.com"
}

#Esse código cria uma instância do Cloud Bigtable chamada "bt-from-tf" com um cluster "bt-from-tf-1" 
#contendo um único nó usando armazenamento SSD.

resource "google_bigtable_instance" "bt-from-tf" {
    name = "bt-from-tf"
    deletion_protection = false 
    labels = {
        "env" = "testing"
    }
    cluster {
        cluster_id = "bt-from-tf-1"
        num_nodes = 1
        storage_type = "SSD"
    }
}


 # esse recurso cria uma tabela chamada "tb-from-tf" dentro de uma instância 
 # existente do Cloud Bigtable com o nome bt-from-tf

resource "google_bigtable_table" "tb1" {
    name = "tb-from-tf"
    instance_name = google_bigtable_instance.bt-from-tf.name
}


# este recurso cria uma instância do Memorystore para Redis com as configurações especificadas, 
# incluindo o tamanho da memória, o nível de desempenho, a região/zona, a versão do Redis e 
# o nome da instância.

resource "google_redis_instance" "redis_from_tf" {
    name = "redis-from-tf"
    memory_size_gb = 1
    tier = "BASIC"

    location_id = "asia-southeast1-a"
    authorized_network = "default"

    redis_version = "RED_5_0"
    display_name = "Redis Instance from terraform"
}