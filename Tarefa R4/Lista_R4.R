#Carregando o banco de dados
data("airquality")

#Removendo valores "NA"
dados <- na.omit(airquality)

#Fixando o banco de dados
attach(dados)

#Item i
#Para ozônio
hist_boxplot(Ozone, col= "cyan", freq = F, density = T, main = "Histograma e boxplot de Ozônio", xlab = "Nível de ozônio (partes por bilhões)", ylab = "Densidade")

#Para radiação solar
hist_boxplot(Solar.R, col= "green", freq = F, density = T, main = "Histograma e boxplot de radiação solar", xlab = "Radiação solar (Langleys)", ylab = "Densidade")

#Para velocidade média do vento
hist_boxplot(Wind, col= "yellow", freq = F, density = T, main = "Histograma e boxplot de velocidade média do vento", xlab = "Vel. méd. vento (milhas por hora)", ylab = "Densidade")

#Para temperatura máxima diária
hist_boxplot(Temp, col= "orange", freq = F, density = T, main = "Histograma e boxplot de temperatura máxima diária", xlab = "Temp. máx. diária (Fahrenheit)", ylab = "Densidade")

#Item ii
hist_boxplot(Ozone, col= "cyan", freq = F, density = T, main = "Histograma e boxplot de Ozônio", xlab = "Nível de ozônio (partes por bilhões)", ylab = "Densidade")
abline(v = mean(Ozone), col = "red", lwd = 2)

#Desfixando o banco de dados
detach(dados)
    
#Item iii
agrupados_por_mes <- group_by(dados, Month)
    
#Dividindo tela ao meio
par(mfrow=c(1,2))
    
#Criando gráfico de linha para a mediana mensal do nível de ozônio
mediana_Ozonio_mes <- summarise(agrupados_por_mes, median(Ozone))
plot(mediana_Ozonio_mes, type="l", main = "Evolução da mediana - ozônio", xlab = "Mês", ylab = "Nível (partes por bilhões)", col = "cyan", lwd = 2)
#Criando gráfico de linha para a mediana mensal da temperatura máxima
mediana_Temp_mes <- summarise(agrupados_por_mes, median(Temp))
plot(mediana_Temp_mes, type="l", main = "Evolução da mediana - temperatura", xlab = "Mês", ylab = "Temp. máx.(°F)", col = "orange", lwd = 2)
    
      
#Criando gráfico de linha para média mensal do nível de ozônio
media_Ozonio_mes <- summarise(agrupados_por_mes, mean(Ozone))
plot(media_Ozonio_mes, type="l", main = "Evolução média - ozônio", xlab = "Mês", ylab = "Nível (partes por bilhões)", col = "cyan", lwd = 2)
#Criando gráfico de linha para média mensal da temperatura máxima
media_Temp_mes <- summarise(agrupados_por_mes, mean(Temp))
plot(media_Temp_mes, type="l", main = "Evolução média - temperatura", xlab = "Mês", ylab = "Temp. máx.(°F)", col = "orange", lwd = 2)
    
#Desfazendo divisão
par(mfrow=c(1,1))
      
#item iv
#Criando boxplot mensal para o nível de ozônio
boxplot(dados$Ozone~dados$Month, main = "Boxplot do nível de ozônio", xlab = "Nível (partes por bilhões)", ylab = "Mês",horizontal = T, col = c(7,6,10,11,12))
#Criando mensal para a temperatura máxima
boxplot(dados$Temp~dados$Month, main = "Boxplot da temperatura", xlab = "Temp. Máx. (ºF)", ylab = "Mês", horizontal = T, col = c(7,6,10,11,12))      
    
