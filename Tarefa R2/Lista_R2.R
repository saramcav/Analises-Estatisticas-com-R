#Carregando dplyr
library(dplyr)

#Filtrando as linhas sem zero nas variáveis Glucose, BloodPressure, Insulin e BMI
dados <- filter(diabetes, Glucose>0, BloodPressure>0, Insulin>0, BMI>0)

#Carregando epiDisplay
library(epiDisplay)

#Tabela de frequência para Outcome
tab1(dados$Outcome, graph = FALSE)

#Gráfico de barras para Outcome	
tab1(dados$Outcome, main = "Distribuição de diagnósticos para diabetes", ylab = "Frequência", col = c(rgb(0,0,1,1/4), rgb(1,0,0,1/4)))

#Gráfico de pizza para Outcome
freq_outcome <- table(dados$Outcome)
pie(freq_outcome, main = "Distribuição de diagnósticos de diabetes", col = col = c(rgb(0,0,1,1/4), rgb(1,0,0,1/4)))

#Gráfico de pizza para Insulin
freq_insulin <- table(dados$Insulin)
pie(freq_insulin, main = "Distribuição da variável insulina")
#O gráfico de pizza não é adequado para esta variável, pois é indicado para variáveis
#qualitativas, porém Insulin é quantitativa. Por ela possuir muitos valores distintos, 
#acaba que o gráfico tem muita informação e é inútil para análises. O ideal é criar um 
#histograma, para representar as faixas de valores sobre um eixo de reais (além das 
#barras para representar as frequências).
                                                         

#Definindo classes para Insulin 
summary(dados$Insulin) #Com isso, vi que o valor mínimo era 14.00 e o máximo 846.00 e decidi que seriam 8 faixas
classes <- cut(dados$Insulin, breaks = seq(from = 14, to = 847,length = 9), right = FALSE)

#Tabela de frequência para Insulin
tab1(classes, graph = FALSE)

#Histograma para Insulin
hist(dados$Insulin, main = "Histograma da variável insulina", xlab = "Valor", ylab = "Frequência", col = rgb(0,1,0,1/4))

#Criando os bancos positivo e negativo
positivo <- filter(dados, Outcome==1)
negativo <- filter(dados, Outcome==0)


#Criando histogramas sobrepostos dos bancos negativo e positivo para Glucose
h1 <- hist(negativo$Glucose)
h2 <- hist(positivo$Glucose)

plot(h1, col=rgb(0,0,1,1/4), ylim =c(0, max(max(h1$counts), max(h2$counts))), xlim=c(min(min(h1$breaks), min(h2$breaks)), max(max(h1$breaks, max(h2$breaks)))), xlab = "Valor ", ylab = "Frequência", main = "Histograma da variável glicose (0-roxo, 1-rosa)")
plot(h2, col=rgb(1,0,0,1/4), add=T)
#O valor médio de glicose do grupo não-diabético é menor do que o valor médio de
#glicose do grupo diabético, uma vez que as barras mais altas do roxo, indicativas de
#frequência, estão localizadas mais à esquerda no eixo x, ou seja, sobre valores menores de
#glicose. Também é possível observar que o grupo diabético se mostra melhor distribuído
#(sem picos de frequência) sobre os valores de glicose, enquanto o grupo não-diabético se
#distribui aos arredores do valor 100.


#Criando histogramas sobrepostos dos bancos negativo e positivo para Insulin
h3 <- hist(negativo$Insulin)
h4 <- hist(positivo$Insulin)

plot(h3, col=rgb(0,0,1,1/4), ylim =c(0, max(max(h3$counts), max(h4$counts))), xlim=c(min(min(h3$breaks), min(h4$breaks)), max(max(h3$breaks, max(h4$breaks)))), xlab = "Valor ", ylab = "Frequência", main = "Histograma da variável insulina (0-roxo, 1-rosa)")
plot(h4, col=rgb(1,0,0,1/4), add=T)
#O valor médio de insulina do grupo não-diabético é menor do que o valor médio de
#insulina do grupo diabético, uma vez que as barras mais altas do roxo, indicativas de
#frequência, estão localizadas mais à esquerda no eixo x, ou seja, sobre valores menores de
#insulina.