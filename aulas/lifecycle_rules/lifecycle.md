 No Terraform, os atributos de ciclo de vida (lifecycle) são usados para controlar o 
 comportamento de criação, atualização e exclusão de recursos. Esses atributos permitem
 que se especifique certas diretrizes e comportamentos personalizados para a gerência 
 dos recursos. Existem quatro atributos de ciclo de vida principais:




#lifecycle - resource attributes

 ------> create_before_destroy :  Este atributo especifica que o novo recurso deve ser 
#criado antes que o recurso existente seja destruído. Isso é útil em cenários 
#em que a criação do novo recurso depende da existência do recurso antigo. 
#O Terraform criará o novo recurso antes de destruir o antigo, minimizando assim 
#o tempo de indisponibilidade.


 ------> prevent_destroy : Ao definir este atributo como true, você impede que um recurso 
 seja destruído acidentalmente. Isso é útil para recursos críticos que você deseja 
 manter intocáveis ou para evitar a exclusão acidental de dados importantes. No entanto, 
 é importante ter cuidado ao usar esse atributo, pois pode bloquear a remoção de recursos 
 quando necessário.

 -------> ignore_changes: Esse atributo permite ignorar determinadas mudanças nos atributos 
 de um recurso durante a atualização. Você pode especificar uma lista de atributos que não 
 devem causar uma atualização no recurso quando seus valores são modificados. Isso é útil 
 quando você tem atributos que mudam com frequência, mas que não afetam a funcionalidade 
 do recurso.

 -------> delete_before_replace: Esse atributo especifica que o recurso deve ser destruído 
 antes de ser substituído. Diferente do create_before_destroy, que cria o novo recurso antes 
 de destruir o antigo, o delete_before_replace primeiro destrói o recurso existente e, em 
 seguida, cria o novo recurso. Isso é útil quando a substituição do recurso requer uma nova 
 instância completamente diferente da antiga.
