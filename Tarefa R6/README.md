# Lista Semana 6 - Método Estatístico de Apoio à Decisão

## 1. Carregue o banco de dados saude.csv. Ele contém os dados médicos de 80 voluntários

### i) Plote os dados da circunferência da cintura (eixo y) em relação à medida do braço (eixo x).

### ii) Calcule o modelo de regressão linear. Plote a reta de regressão sobre o diagrama de dispersão, na cor vermelha.

### iii) Estime a circunferência da cintura de uma pessoa com o braço medindo:
- a) 24,2cm
- b) 45,0cm
- c) 33,9cm
- d) 12,0cm

### iv) É possível realizar todas as estimativas acima? Por quê?

## 2. Para reduzir variâncias locais, é muito comum a utilização de médias móveis, que nada mais é que, ao invés de olhar para os dados puros, olhamos para a média dos dados em uma janela pré-definida. 

Por exemplo, como às vezes há demora para registrar a morte de um paciente, os números de mortes por covid-19 têm sido apresentados em médias móveis de 7 dias. ([Mais informações](https://g1.globo.com/bemestar/coronavirus/noticia/2020/07/27/entenda-como-e-calculada-a-media-movel-e-a-variacao-dos-casos-e-mortes-por-covid-19.ghtml)).

No R, vamos utilizar o pacote **zoo** para criar médias móveis, utilizando o comando:
r
rollmean(x, k)

Onde `x` são os dados e `k` é o tamanho da janela desejada.  

Por exemplo, se desejo realizar médias móveis da variável **Temp** do banco de dados `airquality`, basta executar os comandos a seguir (lembre-se de instalar o pacote `zoo` antes):
r
library(zoo)
Temp_mm <- rollmean(airquality$Temp, k=7)


### i) Carregue o banco de dados Dados Bov Usd.csv.  
É uma versão reduzida do banco de dados que contém as cotações do dólar e Bovespa, de **01/01/2017 até 25/10/2018**. Selecione apenas as **144 primeiras observações** e descarte o restante. Chame esse novo banco de dados de **bovusd**.

### ii) Crie uma reta de regressão, utilizando a variável **bovespa** como variável explicativa e **usd** como variável resposta. Plote os dados e a reta de regressão sobre os dados.

### iii) Vamos criar médias móveis das variáveis **bovespa** e **usd**, em janelas de tamanho 5.  
Nomeie-as respectivamente como **bovespa_mm** e **usd_mm**.

### iv) Crie uma reta de regressão, utilizando a variável **bovespa_mm** como variável explicativa e **usd_mm** como variável resposta. Plote os dados e a reta de regressão sobre os dados.

### v) Compare o coeficiente de determinação entre as retas de regressão criadas acima (**dados puros x dados em médias móveis**).  
O que foi possível observar? Por que você acha que há essa diferença?