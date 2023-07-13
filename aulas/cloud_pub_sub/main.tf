resource "google_pubsub_topic" "topic_tf" {
    name = "topic_tf"
}

resource "google_pubsub_subscription" "sub_tf" {
    name  = "sub_tf"
    topic = google_pubsub_topic.topic_tf.name
}


# O código acima é um exemplo de configuração usando o Terraform para criar um tópico (topic) e uma assinatura 
# (subscription) no Cloud Pub/Sub da Google Cloud Platform (GCP). Analisando as duas partes do código:
# resource "google_pubsub_topic" "topic_tf": Este trecho define um recurso do Terraform para criar um tópico 
# no Cloud Pub/Sub. Ele possui o identificador "google_pubsub_topic" definido pelo nome atribuído ao recurso no 
# Terraform. O tópico é definido com o nome "topic_tf".
# resource "google_pubsub_subscription" "sub_tf": Este trecho define um recurso para criar uma assinatura no 
# Cloud Pub/Sub. A assinatura é associada ao tópico criado anteriormente usando a expressão 
# google_pubsub_topic.topic_tf.name. A assinatura é definida com o nome "sub_tf".
# Em resumo, o código do Terraform está criando um tópico chamado "topic_tf" e uma assinatura chamada 
# "sub_tf" no Cloud Pub/Sub. Essas configurações permitem que você envie mensagens para o tópico e 
# receba-as pela assinatura, facilitando a troca de mensagens assíncronas entre componentes distribuídos do seu sistema. 
# O uso do Terraform para provisionar esses recursos torna o processo de criação e gerenciamento do Cloud Pub/Sub mais 
# automatizado e replicável.