Para configurar a criptografia de um bucket no Google Cloud Storage usando o Terraform, pode utilizar-se a configuração encryption dentro do bloco resource do bucket. Existem duas opções principais para a configuração de criptografia: criptografia no lado do servidor (Server-Side Encryption) e criptografia no lado do cliente (Client-Side Encryption). Vou fornecer exemplos de ambas as opções.

----> Criptografia no Lado do Servidor (Server-Side Encryption):
A criptografia no lado do servidor permite que o Google Cloud Storage gerencie a criptografia dos dados armazenados no bucket. Você pode usar a criptografia padrão do Google Cloud ou fornecer suas próprias chaves de criptografia gerenciadas pelo cliente.

----> Criptografia no Lado do Cliente (Client-Side Encryption):
A criptografia no lado do cliente permite que você criptografe os dados antes de enviá-los para o Google Cloud Storage. Você precisa gerenciar as chaves de criptografia do lado do cliente e garantir a decodificação correta dos dados quando for acessá-los.