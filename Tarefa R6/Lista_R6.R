#1-i
attach(saude)
plot(Braco, CINT, xlab = "Circunferência do braço (cm)", ylab = "Circunferência da cintura (cm)")

#1-ii
modelo <- lm(CINT~Braco)
abline(modelo, col = "red", lwd = 2)

#1-iii
alternativa <- c(24.2, 45.0, 33.9, 12.0)
for (valor in alternativa){
  if (valor>min(Braco) && valor<max(Braco)){
    y <- modelo$coefficients[1] + modelo$coefficients[2]*valor
    cat(sprintf("A circunferência da cintura para o braço de %.2f cm é de %.2f cm. \n", valor, y))
  } else{
    cat(sprintf("Não é possível estimar a circunferência da cintura para o braço de %.2f cm. \n", valor))
  }
}

#2-i
install.packages("zoo")
library(zoo)
bovusd <- dados[1:144,]

#2-ii
detach(saude)
attach(bovusd)
modelo_puro <- lm(usd~bovespa)
plot(bovespa, usd)
abline(modelo_puro, col = "green", lwd = 2)

#2-iii
bovespa_mm <- rollmean(bovespa, k=5)
usd_mm <- rollmean(usd, k=5)

#2-iv
modelo_mm <- lm(usd_mm~bovespa_mm)
plot(bovespa_mm, usd_mm)
abline(modelo_mm, col = "blue", lwd = 2)

#2-v 
summary(modelo_puro)$r.squared #Deu 0.5866425
summary(modelo_mm)$r.squared #Deu 0.6213445