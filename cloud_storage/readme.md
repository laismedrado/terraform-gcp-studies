https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket

O Google Cloud Storage é um serviço de armazenamento de objetos oferecido pelo Google Cloud Platform (GCP). Ele fornece armazenamento escalável e durável para dados não estruturados, como arquivos de mídia, backups, conjuntos de dados e muito mais. Aqui estão algumas das principais funcionalidades do Google Cloud Storage:

Armazenamento escalável: O Cloud Storage permite armazenar quantidades massivas de dados, desde alguns gigabytes até petabytes, sem precisar se preocupar com a capacidade de armazenamento. Ele é projetado para dimensionar automaticamente para atender às demandas do seu aplicativo.

Durabilidade e disponibilidade: Os dados armazenados no Google Cloud Storage são altamente duráveis e disponíveis. O Cloud Storage replica automaticamente seus dados em várias regiões e zonas de disponibilidade para garantir a resiliência e a recuperação de falhas.

Controle de acesso e segurança: O Cloud Storage oferece várias opções de controle de acesso para proteger seus dados. Você pode definir políticas de acesso baseadas em permissões de usuário, regras de firewall e chaves de autenticação. Além disso, o Cloud Storage permite criptografar seus dados em repouso e em trânsito.

Recursos de metadados: O Cloud Storage permite adicionar metadados personalizados aos objetos armazenados, o que facilita a organização e a recuperação dos dados. Você pode adicionar tags, marcadores ou informações adicionais para categorizar e pesquisar seus objetos.

Integração com outros serviços do GCP: O Cloud Storage é altamente integrado com outros serviços do Google Cloud Platform. Você pode facilmente combinar o armazenamento de objetos com serviços de processamento de dados, aprendizado de máquina, análise de dados e muito mais.

Transferência de dados rápida e confiável: O Cloud Storage oferece opções de transferência de dados rápidas e confiáveis. Você pode fazer upload ou download de dados por meio de uma interface da web, ferramentas de linha de comando, APIs ou transferência direta usando o serviço Transfer Appliance do Google.

Custos flexíveis: O Cloud Storage oferece opções de preços flexíveis, permitindo que você escolha entre armazenamento de baixo custo para acesso menos frequente ou armazenamento de alto desempenho para acesso mais rápido. Além disso, você paga apenas pelo que usa, sem taxas mínimas.

Políticas de ciclo de vida: O Cloud Storage permite definir políticas de ciclo de vida para automatizar a movimentação ou exclusão de objetos com base em critérios específicos. Por exemplo, você pode configurar uma política para mover automaticamente objetos para classes de armazenamento mais econômicas após um determinado período de tempo.

Controle de versões de objetos: O Cloud Storage suporta o controle de versões de objetos, o que significa que você pode manter várias versões de um objeto armazenado. Isso é útil para rastrear e recuperar versões anteriores de um objeto, caso seja necessário.

Transferência acelerada: O Cloud Storage oferece o recurso de transferência acelerada, que otimiza a velocidade de transferência de dados para objetos grandes. Isso permite uma transferência mais rápida e eficiente de grandes volumes de dados.

Análise e insights: O Cloud Storage fornece recursos de análise e insights para ajudar a entender o uso e o desempenho do armazenamento. Você pode usar o Cloud Storage Analytics para coletar e visualizar métricas importantes, como o volume de dados acessados, as principais consultas de armazenamento e muito mais.

Integração com o BigQuery: O Cloud Storage pode ser facilmente integrado ao Google BigQuery, um serviço de análise de dados em grande escala. Isso permite que você carregue dados diretamente do Cloud Storage para o BigQuery para análise avançada e consultas rápidas.

Notificações e eventos: O Cloud Storage suporta notificações e eventos baseados em alterações nos objetos armazenados. Você pode configurar notificações por e-mail, pub/sub ou chamadas HTTP para ser alertado sobre alterações, como upload, exclusão ou atualização de objetos.

Controle de custos: O Cloud Storage oferece recursos para ajudar no controle de custos, incluindo orçamentos, relatórios de uso e recomendações de otimização. Você pode definir orçamentos para monitorar e receber alertas quando os custos de armazenamento atingirem um determinado limite.

Armazenamento de arquivos estáticos para sites: O Cloud Storage é frequentemente usado para hospedar arquivos estáticos de sites, como páginas HTML, imagens, CSS e JavaScript. Você pode configurar o Cloud Storage como um bucket público para fornecer acesso direto aos arquivos do seu site.


ARGUMENTOS: 
No Google Cloud Storage, você pode fornecer argumentos (chamados de "objetivos") para especificar configurações e opções adicionais ao criar um bucket. Aqui estão alguns dos principais argumentos que você pode usar ao criar um storage bucket:

Nome do bucket: Esse é o argumento obrigatório e define o nome único do bucket que você está criando. O nome deve seguir algumas regras de nomenclatura, como ser exclusivo globalmente e ter apenas letras minúsculas, números, hífens ou sublinhados.

Classe de armazenamento: Você pode especificar a classe de armazenamento do bucket, que define as características de durabilidade, disponibilidade e custo. Alguns exemplos de classes de armazenamento incluem STANDARD (padrão), NEARLINE (próximo à linha), COLDLINE (frio) e ARCHIVE (arquivo).

Localização do bucket: Você pode definir a localização geográfica onde o bucket será criado. O Google Cloud Storage oferece uma variedade de locais regionais e multirregionais para atender às suas necessidades de latência e conformidade. Por exemplo, você pode especificar us-central1 para a região central dos Estados Unidos.

Controle de acesso: Você pode configurar o controle de acesso ao bucket definindo políticas de permissões. Isso inclui especificar quais usuários ou contas de serviço têm acesso ao bucket e quais permissões eles têm, como leitura, gravação, exclusão, etc.

Retenção de dados: O argumento retentionPolicy permite definir uma política de retenção de dados para o bucket. Isso garante que os objetos não possam ser excluídos ou alterados até que a política de retenção expire.

Regras de ciclo de vida: Você pode definir regras de ciclo de vida para automatizar a movimentação ou exclusão de objetos dentro do bucket. Por exemplo, você pode configurar uma regra para mover automaticamente objetos com mais de 30 dias para uma classe de armazenamento mais econômica.

Criptografia: O Cloud Storage permite que você especifique opções de criptografia para os objetos no bucket. Isso inclui criptografia de dados em repouso usando chaves gerenciadas pelo Google ou chaves gerenciadas pelo cliente.

Esses são apenas alguns exemplos de argumentos que podem ser fornecidos ao criar um storage bucket no Google Cloud Storage. A lista completa de argumentos e suas opções está disponível na documentação oficial do Google Cloud Storage.





 -----------------------------------------------  ARGUMENTOS  -----------------------------------------------

Acesso público: Com o argumento predefinedAcl, você pode definir uma configuração de acesso público para o bucket. Por exemplo, você pode especificar publicRead para permitir que qualquer pessoa tenha acesso de leitura aos objetos no bucket.

Compartilhamento de bucket: Você pode especificar permissões de compartilhamento para fornecer acesso a outros usuários, contas de serviço ou grupos específicos. Isso pode ser feito usando o argumento iamConfiguration.bucketPolicyOnly.enabled juntamente com a definição das políticas de acesso.

Proteção contra exclusão: O argumento iamConfiguration.bucketPolicyOnly.locked permite habilitar a proteção contra exclusão acidental ou intencional do bucket ou de seus objetos. Quando essa opção é ativada, apenas as políticas do IAM podem modificar ou excluir o bucket.

Logging: Você pode habilitar o registro de acesso ao bucket para rastrear as atividades de acesso e as solicitações feitas no bucket. O argumento logging.logBucket permite especificar o bucket onde os registros serão armazenados.

Versionamento: Ao criar um bucket, você pode ativar o versionamento de objetos definindo o argumento versioning.enabled. Isso permite que você mantenha várias versões de um objeto ao longo do tempo e restaure versões anteriores, se necessário.

Transferências aceleradas: O argumento transferOptions permite habilitar as transferências aceleradas para o bucket. Essa opção melhora a velocidade de upload e download de objetos grandes usando uma infraestrutura de rede otimizada.

Tempo de vida do objeto: Com o argumento timeStorageClassTransition, você pode definir um período de tempo após o qual um objeto no bucket será movido para uma classe de armazenamento diferente. Isso é útil para otimizar os custos, movendo objetos menos acessados para uma classe de armazenamento mais econômica.

VPC Service Controls: O argumento vpcServiceControls.enabled permite que você habilite os VPC Service Controls para o bucket. Isso ajuda a proteger os recursos do Google Cloud Storage dentro de um perímetro de rede virtual privado (VPC) e controlar o acesso a eles.

