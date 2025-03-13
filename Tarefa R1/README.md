# Lista R1

Os títulos públicos são ativos de renda fixa que possuem a finalidade de captar recursos
para o financiamento da dívida pública e financiar atividades do Governo Federal, como
educação, saúde e infraestrutura.

Por ser um investimento em ativos garantidos pelo governo brasileiro, o risco é consi-
derado muito baixo. Quem aplica nesses títulos também tem a vantagem de escolher a
forma como será remunerado e o prazo, com títulos pré ou pós-fixados de curto, médio ou
longo prazo. Isso significa que você pode comprar um ativo já sabendo quanto receberá
ao fim do investimento, para os pré-fixados; ou comprar um título que atualize o valor a
ser pago no fim da aplicação através de índices financeiros de inflação ou juros, para os
índices pós-fixados.

| Título  | Nome | Tipo |
|----------|-------------------------|-------------|
| LTN      | Tesouro Prefixado       | Pré-fixado |
| NTN-F    | Tesouro Prefixado com Juros Semestrais | Pré-fixado |
| LFT      | Tesouro Selic           | Pós-fixado  |
| NTN-B    | Tesouro IPCA + com Juros Semestrais | Pós-fixado  |
| NTN-C    | Tesouro IGPM+          | Pós-fixado  |

## Questões

1. Crie um novo projeto, chamado **Lista R1**.

2. Carregue o banco de dados **titulos_federais.csv**. Ele contém os dados das ne-
gociações dos títulos federais entre 13/08/2018 e 15/08/2018. Vamos realizar uma
série de alterações nesse banco de dados.

   a) Crie uma nova variável, chamada **Dif_preco**, com a diferença entre as variáveis **Preco_Max_Negociacao** e **Preco_Min_Negociacao**.
   
   b) Agora, filtre apenas os títulos que tiveram alguma **Operacao com corretagem**.
   
   c) Exclua as variáveis **Taxa_Min_negociacao**, **Taxa_media_negociacao** e **Taxa_max_negociacao**.
   
   d) Renomeie a variável **Qtd_negociada**. O novo nome deve ser **Negoc_realizadas**.
   
   e) Exporte esse banco de dados como um arquivo `.csv`, com o nome `titulos_seu_nome_aqui.csv` (substitua "seu_nome_aqui" pelo seu nome).
   
   f) Utilizando o comando `group_by()`, calcule a média de **Negoc_realizadas** por tipo de título (**Sigla**).