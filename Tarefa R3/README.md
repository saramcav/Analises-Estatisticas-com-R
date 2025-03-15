# Lista Semana 3 - Método Estatístico de Apoio à Decisão

## 1. Carregamento da Planilha

Carregue a planilha "Consumo de carne.xlsx" e nomeie-a **Consumo**. Ela contém o consumo anual, preço no atacado e preço no varejo das carnes bovina, de frango e suína, no Reino Unido. O peso está em libras, e o preço em centavos por libra.

### i) Gráfico de Linhas

Os dados apresentam a evolução temporal do consumo de carnes e seus preços. Para visualizar essa evolução, utilize um gráfico de linhas com o comando `plot()`. Exemplo:

```r
plot(Consumo$ano, Consumo$consumo_bovino, type="l")
```

Com opções adicionais:

```r
plot(Consumo$ano, Consumo$consumo_bovino, type="l",
     ylim=c(0,105), col="red", lwd=3,
     main="Consumo de Carne", xlab="Ano", ylab="libras/ano")
```

### ii) Comparação do Consumo das Carnes

Para plotar o consumo das demais carnes junto ao consumo bovino, utilize `lines()`:

```r
plot(Consumo$ano, Consumo$consumo_bovino, type="l")
lines(Consumo$ano, Consumo$consumo_frango)
```

#### Problemas Identificados:
(a) Parte do gráfico do consumo de frangos ficou fora do gráfico.
(b) Não está claro qual linha pertence a qual dado.

#### Solução:
- Ajustar os limites do eixo Y.
- Alterar cores (`red` para carne bovina, `green` para carne de frango, `blue` para carne suína).
- Ajustar rótulos e título.

Exporte esse gráfico como **grafico1.png**.

### iii) Comparação com os Preços no Varejo

Para responder à pergunta "por que houve essa diferença no consumo de carne bovina e de frango?", plote lado a lado dois gráficos: 
- **Esquerda:** Consumo de carne bovina e de frango.
- **Direita:** Evolução dos preços no varejo da carne bovina e de frango.

Utilize:

```r
par(mfrow=c(1,2))
```

Crie os gráficos conforme feito anteriormente e exporte como **grafico2.png**.

### iv) Explicação dos Resultados

Escreva um texto explicando, com suas palavras, possíveis motivos para o aumento do consumo de frango e a queda do consumo de carne bovina. Não são necessários termos técnicos.

### v) Restaurar Layout dos Gráficos

Após as análises, retorne o layout ao normal:

```r
par(mfrow=c(1,1))
```

### vi) Cálculo da Variância dos Preços

Calcule a variância dos preços no varejo das carnes bovina, suína e de frango.