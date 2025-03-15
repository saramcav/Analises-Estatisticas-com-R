# Lista Semana 4 - Método Estat́ıstico de Apoio à Decisão

## 1. Carregamento do Banco de Dados

Carregue o banco de dados **airquality**, nativo do R. Esse banco contém coletas para avaliar a qualidade do ar em Nova York, entre maio e setembro de 1973.

As variáveis medidas são:

- **Ozone**: nível de ozônio em partes por bilhão (ppb);
- **Solar.R**: radiação solar em Langleys (lang);
- **Wind**: velocidade média do vento em milhas por hora (mph);
- **Temp**: temperatura máxima diária em Fahrenheit (F);
- **Month**: mês;
- **Day**: dia.

Note que existem algumas observações **NA** (dados faltantes) no banco de dados. Retire essas observações utilizando `na.omit()` ou `filter()`.

## 2. Análises Gráficas

### i) Histograma e Boxplot

O comando `hist_boxplot()` do pacote **packHV** constrói os dois gráficos juntos:

```r
install.packages("packHV")  # Para instalar o pacote
library(packHV)
hist_boxplot(airquality$Ozone, col="lightblue")
```

Também é possível plotar a densidade amostral alterando os parâmetros `freq=F` e `density=T`:

```r
hist_boxplot(airquality$Ozone, col="cyan", freq=F, density=T)
```

Repita o mesmo processo para as variáveis **Solar.R, Wind e Temp**, utilizando cores distintas. Para visualizar as cores disponíveis no R, utilize `colors()` no console.

### ii) Diferença entre Média e Mediana

Crie um histograma com boxplot da variável **Ozone** e adicione uma linha vertical na média (vermelha):

```r
hist_boxplot(airquality$Ozone, col="cyan", freq=F, density=T)
abline(v=mean(airquality$Ozone, na.rm=T), col="red", lwd=2)
```

Observe a diferença entre média e mediana (mediana é o traço interno da caixa do boxplot). Explique por que há essa diferença.

### iii) Evolução Temporal

Construa gráficos de linhas para as variáveis **Ozone** e **Temp**, mostrando a evolução temporal. Analise se há alguma relação.

### iv) Boxplot por Mês

Crie boxplots da variável **Ozone** mês a mês. Faça o mesmo para **Temp** e verifique se há alguma relação.