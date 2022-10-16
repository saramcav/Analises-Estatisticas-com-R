#1-i
library(lares)
corr_cross(saude, method="spearman")
#Para ver quais eram maiores que 0,80:
cor(saude$Peso, saude$COTOV) #Deu 0.7956704
cor(saude$COTOV, saude$Pulso) #Deu 0.8020357

#1-ii
library(dplyr)
abaixo <- filter(saude, IMC<27)
acima <- filter(saude, IMC>27)
corr_cross(abaixo, method = "spearman")
corr_cross(acima, method= "spearman")

#1-iii
f <- filter(saude, Sexo == "F")
m <- filter(saude, Sexo == "M")
corr_cross(f, method = "spearman")
corr_cross(m, method = "spearman")

#2-i
plot(Consumo$preco_bovino_varejo, Consumo$consumo_bovino, main = "Preco x Consumo da carne bovina", xlab =  "Preço varejo (centavos por libras)", ylab= "Consumo (libras)", type="n")
points(Consumo$preco_bovino_varejo, Consumo$consumo_bovino, col = "blue", pch=20)
#2-ii
cor(Consumo$preco_bovino_varejo, Consumo$consumo_bovino, method = "spearman") #Deu -0.9549094

#3-i
plot(Consumo$preco_frango_varejo, Consumo$consumo_frango, main = "Preco x Consumo da carne de frango", xlab =  "Preço varejo (centavos por libras)", ylab= "Consumo (libras)", type="n")
points(Consumo$preco_frango_varejo, Consumo$consumo_frango, col = "red", pch=20)
cor(Consumo$preco_frango_varejo, Consumo$consumo_frango) #Deu 0.9614316

#4
library(UsingR)
data(fat)
fat <- dplyr::select(fat, body.fat, density, age, weight, height, BMI, abdomen)
#Gerando o ranking das 21 combinações da matriz:
corr_cross(fat)