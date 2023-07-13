resource "google_storage_bucket" "fun_bucket" {
  name = "fun_bucket_tf"
}


resource "google_storage_bucket_object" "srccode" {
  name   = "index.zip"
  bucket = google_storage_bucket.fun_bucket.name
  source = "index.zip"
}


# esse recurso abaixo cria uma Cloud Function chamada "fun_from-tf" na GCP com tempo de execução 
# Node.js 14. Ela é configurada para ser acionada por solicitações HTTP e usa o código-fonte 
# armazenado em um bucket de armazenamento especificado. A função tem uma descrição opcional e 
# uma quantidade de memória disponível definida.

resource "google_cloudfunctions_function" "fun_from_tf" {
  name                  = "fun_from-tf"
  runtime               = "nodejs14"
  description           = "This is my first function from terraform"
  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.fun_bucket.name
  source_archive_object = google_storage_bucket_object.srccode.name

  trigger_htrigger_http = true
  entry_point           = "helloWorldtf"
}


resource "google_cloudfunctions_function_iam_member" "allowaccess" {
  region         = google_cloudfunctions_function.fun_from_tf.region
  cloud_function = google_cloudfunctions_function.fun_from_tf.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"

}


# Esse código  cria um bucket de armazenamento, carrega um arquivo zip contendo o código-fonte 
# de uma Cloud Function para esse bucket e, em seguida, cria a Cloud Function em si, 
# configurada para ser acionada por solicitações HTTP. Além disso, o código concede permissão de 
# invocação da função para todos os usuários.