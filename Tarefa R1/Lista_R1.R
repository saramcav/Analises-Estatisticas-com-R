#Comando 1 - Carregando a biblioteca dplyr 

library(dplyr)


#Comando 2 - "Crie uma nova variável, chamada Dif_preco, com a diferença entre as variáveis Preco_Max_Negociacao e o Preco_Min_Negociacao."

dados <- mutate(dados,Dif_preco = Preco_Max_Negociacao - Preco_Min_Negociacao)


#Comando 3 - "Agora, filtre apenas os títulos que tiveram alguma Operacão_com_corretagem."

dados <- filter(dados,Operacoes_com_corretagem >= 1)


#Comando 4 - "Exclua as variáveis Taxa_Min_negociacao, Taxa_media_negociacao e Taxa_max_negociacao."

dados <- select(dados,-Taxa_Min_negociacao,-Taxa_media_negociacao,-Taxa_max_negociacao)


#Comando 5 - "Renomeie a variável Qtd_negociada. O novo nome deve ser Negoc_realizadas."

dados <- rename(dados,Negoc_realizadas = Qtd_negociada)


#Comando 6 - "Exporte esse banco de dados como um arquivo .csv, com o nome titulos_seu_nome_aqui."

write.table(dados, "titulos_sara_maia_cavalcante.csv", sep=";", row.names = F)


#Comando 7 - "Utilizando o comando group_by(), calcule a a média de Negoc_realizadas por tipo de título (Sigla)."

medias_negoc <- summarise(group_by(dados,Sigla), Media = mean(Negoc_realizadas))