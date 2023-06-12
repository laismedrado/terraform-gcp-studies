https://cloud.google.com/storage/docs/storage-classes?hl=pt-br


As Storage Classes (classes de armazenamento) são opções disponíveis no Google Cloud Storage para definir as características de durabilidade, disponibilidade e custo dos objetos armazenados em um bucket. Cada classe de armazenamento é projetada para atender a requisitos específicos de acesso, retenção e custo. Aqui estão algumas das classes de armazenamento disponíveis no Google Cloud Storage:

Standard: A classe de armazenamento padrão é adequada para dados frequentemente acessados e que requerem alta durabilidade e disponibilidade. Os objetos armazenados nessa classe estão prontamente disponíveis para acesso, mas têm um custo um pouco mais alto em comparação com outras classes.

Nearline: A classe de armazenamento Nearline é ideal para dados que são acessados com pouca frequência, mas que requerem recuperação rápida quando necessário. Os objetos armazenados nessa classe têm um custo mais baixo do que a classe Standard, mas podem ter uma taxa de acesso um pouco mais alta.

Coldline: A classe de armazenamento Coldline é projetada para dados raramente acessados, mas que precisam de alta durabilidade. Essa classe oferece um custo muito baixo em comparação com as classes anteriores, mas a taxa de acesso é mais alta e o tempo de recuperação dos objetos é maior.

Archive: A classe de armazenamento Archive é destinada a dados de arquivamento que são raramente acessados e exigem a mais baixa taxa de armazenamento. Essa classe oferece o custo mais baixo, mas o tempo de recuperação dos objetos é maior e há uma taxa de acesso significativa para restaurações.

Cada classe de armazenamento possui seus próprios custos associados, baseados na frequência de acesso, durabilidade e tempo de recuperação dos objetos. Ao escolher uma classe de armazenamento para o bucket, é importante considerar a frequência de acesso aos dados, os requisitos de latência e os objetivos de custo.

Além dessas classes de armazenamento principais, o Google Cloud Storage também oferece classes adicionais, como Multi-Regional Storage, Regional Storage e Durable Reduced Availability Storage (DRA). Essas classes fornecem opções mais específicas e personalizáveis para atender a necessidades diferentes de armazenamento de objetos.

Vale ressaltar que a disponibilidade das classes de armazenamento pode variar de acordo com a região geográfica escolhida para o bucket. É recomendado consultar a documentação oficial do Google Cloud Storage para obter informações atualizadas sobre as classes de armazenamento disponíveis e suas características específicas.