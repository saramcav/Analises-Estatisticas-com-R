#Criando gráfico de linhas simples - [item i]

plot(Consumo$ano, Consumo$consumo_bovino, type="l")

#Criando o gráfico 1 - [item ii]

#Para "enquadrar" o consumo de frango usei summary, vi que o mínimo era 36.00 e o máximo era 90.90 e defini ylim para c(30,100) - [subitem a]

summary(Consumo$consumo_frango) 

#Plotei o consumo bovino com cor vermelha e grossura 2 - [subitem b]
#Adicionei um título e mudei o nome dos eixos para deixar o gráfico mais amigável
#Aumentei o número de divisões dos eixos x e y, com xaxp e yaxp, 
#de modo com que cada dividão marcasse o intervalo de 5 unidades

plot(Consumo$ano, Consumo$consumo_bovino, type = "l", main = "Consumo Anual de Carne", xlab = "Ano", ylab = "Libras por habitante", col = "red", lwd = 2, ylim = c(30, 100), xaxp = c(1970, 2020, 10), yaxp = c(30, 100,14))

#Adicionei o consumo de frango ao gráfico - [subitem b]

lines(Consumo$ano, Consumo$consumo_frango, col = "green", lwd = 2)

#Adicionei o consumo suíno  ao gráfico - [subitem c]

lines(Consumo$ano, Consumo$consumo_suino, col = "blue", lwd = 2)

#Legendei o nome das carnes às cores associadas para deixar o gráfico mais amigável

legend(x = "bottomright", legend = c("Bovina", "Frango", "Suína"), lty = 1, bty = "n", lwd = 2, col = c("red", "green", "blue"))

#Criando o gráfico 2 -[item iii]

#Dividindo a tela em dois
par(mfrow=c(1,2))

#Criando o gráfico à esquerda

#Utilizei a mesma lógica do gráfico 1
plot(Consumo$ano, Consumo$consumo_bovino, type = "l", main = "Consumo Anual de Carne", xlab = "Ano", ylab = "Libras por habitante", col = "red", lwd = 2, ylim = c(30, 100), xaxp = c(1970, 2020, 10), yaxp = c(30, 100,14))
lines(Consumo$ano, Consumo$consumo_frango, col = "green", lwd = 2)
legend(x = "bottomright", legend = c("Bovina", "Frango"), lty = 1, bty = "n", lwd = 2, col = c("red", "green"))

#Criando o gráfico à direita

#Utilizei a mesma lógica do gráfico 1, com as seguintes alterações:
#Defini ylim para c(0,700), como na imagem de exemplo
#Com yaxp, dividi o y para que cada divisão marcasse o intervalo de 50 unidades

plot(Consumo$ano, Consumo$preco_bovino_varejo, type = "l", main = "Preço Anual de Carne - Varejo", xlab = "Ano", ylab = "Centavos por libra", col = "red", lwd = 2, ylim = c(0, 700), xaxp = c(1970, 2020, 10), yaxp = c(0, 700,14))
lines(Consumo$ano, Consumo$preco_frango_varejo, col = "green", lwd = 2)
legend(x = "bottomright", legend = c("Bovina", "Frango"), lty = 1, bty = "n", lwd = 2, col = c("red", "green"))

#Desfazendo a divisão - [item v]

par(mfrow=c(1,1))

#Calculando variâncias dos preços de varejo - [item vi]

#Carne bovina = 16719.81
var(Consumo$preco_bovino_varejo)	

#Carne de frango = 2223.662
var(Consumo$preco_frango_varejo)

#Carne suína = 5705.255
var(Consumo$preco_suino_varejo)


#Observando o gráfico à direita, pode-se perceber que, ao longo dos anos, de forma geral, o preço do
#varejo da carne bovina, além de se manter sempre mais caro, apresentou maior tendência de aumento do
#que o preço do varejo da carne de frango (que também aumentou, porém em menores proporções). Isso pode
#ser visto pelo fato de que a linha vermelha possui algumas subidas abruptas (que representam aumentos
#bruscos de preço sobre períodos curtos de tempo), enquanto que a linha verde segue uma tendência de
#aumento consideravelmente menos inclinada.

#Além disso, ao comparar as linhas vermelhas de ambos os gráficos, uma relação inversamente
#proporcional entre o preço da carne bovina e o seu consumo pode ser observada, uma vez que os gráficos
#são quase que “espelhados”: quando o preço aumenta, o consumo decresce.
#Por outro lado, observando o gráfico à esquerda, tem-se que, à medida que o consumo da carne
#bovina decresce, o consumo de carne de frango aumenta.
#Desse modo, pode-se conjecturar que o consumo da carne de frango possivelmente apresentou-se
#como uma alternativa mais barata aos consumidores de carne, que foram deixando de lado, ao decorrer dos
#anos, a carne bovina devido ao seu preço cada vez mais caro. Assim, de forma geral, o comportamento de
#consumos do gráfico à esquerda pode ser visto como consequência do comportamento de preços do gráfico à
#direita.