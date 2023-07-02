variable "project" {
  type    = string
  default = "terraform-gcp-studies"
}

# Recurso para criar uma rede com criação automática de sub-redes
resource "google_compute_network" "auto-vpc-tf" {
  name                    = "auto-vpc-tf"
  auto_create_subnetworks = true        # Habilita a criação automática de sub-redes
  project                 = var.project # Define o projeto da rede
}

# Recurso para criar uma rede sem criação automática de sub-redes
resource "google_compute_network" "custom-vpc-tf" {
  name                    = "custom-vpc-tf"
  auto_create_subnetworks = false       # Desabilita a criação automática de sub-redes
  project                 = var.project # Define o projeto da rede
}

# Recurso para criar uma sub-rede na rede personalizada
resource "google_compute_subnetwork" "sub-sg" {
  name                     = "sub-sg"
  project                  = var.project                             # Define o projeto da sub-rede
  network                  = google_compute_network.custom-vpc-tf.id # Referencia a rede personalizada
  ip_cidr_range            = "10.1.0.0/24"                           # Define o intervalo de IP para a sub-rede
  region                   = "northamerica-northeast1"               # Define a região da sub-rede
  private_ip_google_access = true                                    # Permite acesso a serviços privados do Google Cloud pelas instâncias dentro da sub-rede
}

# Recurso para criar uma regra de firewall permitindo ICMP (ping)
resource "google_compute_firewall" "allow-icmp" {
  name    = "allow-icmp"
  project = var.project                             # Define o projeto da regra de firewall
  network = google_compute_network.custom-vpc-tf.id # Referencia a rede personalizada
  allow {
    protocol = "icmp" # Permite o protocolo ICMP (ping)
    # Ao permitir o protocolo ICMP em uma regra de firewall, está permitindo que o tráfego 
    # de ping seja enviado para as instâncias de sua rede.
    #  Isso pode ser útil para fins de teste, monitoramento e solução de problemas de rede.
  }
  source_ranges = ["49.36.82.10/32"] # Define a faixa de IP permitida para o tráfego de entrada
  priority      = 455                # É importante definir as prioridades corretamente para garantir o comportamento 
  #desejado das regras de firewall. Se houver conflitos entre regras, a prioridade determinará qual 
  #regra terá precedência.
}

output "autos" {
  value = google_compute_network.auto-vpc-tf.id
}

output "custom" {
  value = google_compute_network.custom-vpc-tf.id
}


#