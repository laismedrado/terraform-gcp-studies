https://cloud.google.com/storage/docs/access-control?hl=pt-br


No Google Cloud Storage, existem dois modelos principais de controle de acesso: o controle de acesso granular (fine-grained access control) e o controle de acesso uniforme (uniform access control). Vamos entender melhor cada um deles:

Controle de Acesso Granular (Fine-Grained Access Control):
O controle de acesso granular, também conhecido como controle de acesso baseado em políticas do IAM, permite que você defina permissões altamente granulares em nível de objeto dentro de um bucket. Com esse modelo, você pode conceder ou negar permissões específicas a usuários, grupos ou contas de serviço em objetos individuais.
Por exemplo, você pode permitir que um usuário leia um objeto específico em um bucket, enquanto nega a capacidade de gravar ou excluir esse objeto. Isso oferece um controle preciso sobre o acesso aos objetos armazenados no bucket, permitindo que você defina permissões diferentes para diferentes usuários ou grupos.

O controle de acesso granular é baseado no IAM e é o modelo de controle de acesso recomendado no Google Cloud Storage.

Controle de Acesso Uniforme (Uniform Access Control):
O controle de acesso uniforme é um modelo mais antigo de controle de acesso que utiliza as Listas de Controle de Acesso (ACLs). Com o controle de acesso uniforme, você pode atribuir permissões em nível de bucket, aplicando as mesmas permissões a todos os objetos dentro desse bucket.
Ao definir as ACLs de um bucket, você pode conceder permissões de leitura, gravação e controle total a usuários ou grupos específicos. No entanto, as permissões são aplicadas a todos os objetos dentro do bucket de forma uniforme. Isso significa que você não pode ter diferentes permissões para objetos individuais dentro do bucket.

É importante notar que o controle de acesso granular é recomendado sobre o controle de acesso uniforme, pois fornece uma granularidade maior e mais flexibilidade no gerenciamento de permissões de acesso.

Você pode escolher o modelo de controle de acesso que melhor atenda às suas necessidades específicas, mas a recomendação geral é utilizar o controle de acesso granular (IAM) sempre que possível, pois ele oferece um controle mais preciso e mais robusto sobre o acesso aos objetos no Google Cloud Storage.