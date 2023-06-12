resource "google_storage_bucket" "GCS1" {
  name          = "tf-course-from-terraform"
  project       = var.project
  storage_class = "NEARLINE"
  location      = "northamerica-northeast1"
  labels = {
    "env" = "tf_env"
    "dep" = "compliance"
  }

  uniform_bucket_level_access = false

  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }

  retention_policy {
    is_locked        = true
    retention_period = 864000
  }
}

resource "google_storage_bucket_object" "picture" {
  name   = "porto_da_barra_beach"
  bucket = google_storage_bucket.GCS1.name
  source = "porto da barra.jpg"
}

resource "google_project_iam_binding" "storage_object_get_permission" {
  project = var.project
  role    = "roles/storage.objectViewer"

  members = [
    var.editor_viewer
  ]
}


# Em resumo, esse código cria um bucket de armazenamento no Google Cloud Storage,
# define uma regra de ciclo de vida e uma política de retenção para o bucket, 
# carrega um objeto para o bucket e concede permissão de visualização do objeto 
# para os membros especificados na variável var.editor_viewer.
# retention period é em segundos
#___________________________________________________________________________

# No bucket acima, duas labels estão sendo definidas:

# "env" = "tf_env": Essa label atribui ao bucket o valor "tf_env" para a chave "env". 
# Essa label pode ser usada para indicar o ambiente associado ao bucket, como "dev", "prod", 
# "staging", etc. Nesse caso, a label "tf_env" pode ser usada para indicar que o bucket está 
# associado ao ambiente de desenvolvimento gerenciado pelo Terraform.

# "dep" = "compliance": Essa label atribui ao bucket o valor "compliance" para a chave "dep". 
# Essa label pode ser usada para indicar a finalidade ou a dependência do bucket. Nesse caso, 
# a label "compliance" pode indicar que o bucket está relacionado a requisitos de conformidade 
# ou políticas específicas.

# As labels são opcionais e não afetam o funcionamento técnico do bucket. No entanto, elas 
# fornecem uma maneira flexível de adicionar informações adicionais aos recursos, facilitando 
# a identificação e a organização dos mesmos. As labels também podem ser usadas em operações de 
# pesquisa, filtragem e organização de recursos no Google Cloud Platform.
#_________________________________________________________________________________