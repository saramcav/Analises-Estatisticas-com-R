# Lista Tarefa R-5

## 1. Carregamento do Banco de Dados Saúde

Carregue o banco de dados **saude.csv**. Ele contém os dados médicos de 80 voluntários:

- **Sexo**: M (masculino) ou F (feminino)
- **Idade**: em anos
- **ALT**: Altura em polegadas
- **Peso**: Peso em libras
- **CINT**: Circunferência da cintura em cm
- **TXPUL**: Taxa de pulsação em batimentos por minuto
- **SIST**: Pressão sanguínea sistólica em mmHg
- **DIAST**: Pressão sanguínea diastólica em mmHg
- **COL**: Colesterol in mg
- **IMC**: Índice de Massa Corporal
- **Perna**: Comprimento da parte superior da perna em cm
- **COTOV**: Largura do cotovelo em cm
- **Pulso**: Largura do pulso em cm
- **Braço**: Circunferência do braço em cm

### i) Matriz de Correlações

Para analisar a correlação entre variáveis numéricas, utilize `cor()`:

```r
matriz <- cor(saude[,2:15], method = "spearman")
```

Para visualizar variáveis com alta correlação, use `corr_cross()` do pacote **lares**:

```r
library(lares)
corr_cross(saude, method="spearman")
```

Descreva todos os pares de variáveis com correlação de Spearman acima de **0,80**.

### ii) Análise por IMC

Divida os dados em dois grupos:

```r
abaixo <- subset(saude, IMC < 27)
acima <- subset(saude, IMC >= 27)
```

Repita a análise de correlação em cada grupo e compare os resultados.

### iii) Análise por Sexo

Separe os dados por sexo:

```r
m <- subset(saude, Sexo == "M")
f <- subset(saude, Sexo == "F")
```

Realize novamente a análise de correlação e verifique mudanças.

---

## 2. Consumo de Carne Bovina

Carregue o arquivo **"Consumo de carne.xlsx"** e nomeie-o **Consumo**.

### i) Diagrama de Dispersão

Crie um gráfico de dispersão entre **preço no varejo** e **consumo de carne bovina**. Analise a possível relação.

### ii) Coeficiente de Correlação

Se houver relação, calcule o coeficiente de correlação mais apropriado.

### iii) Análise dos Resultados

Faça uma breve interpretação dos achados.

---

## 3. Consumo de Carne de Frango

### i) Diagrama de Dispersão

Crie um gráfico de dispersão entre **preço no varejo** e **consumo de carne de frango**. Calcule o coeficiente de correlação mais adequado.

### ii) Interpretação da Correlação

As variáveis **consumo** e **preço do frango** são positivamente correlacionadas. O aumento do preço implica aumento no consumo, ou vice-versa?

---

## 4. Banco de Dados Fat

Carregue o banco **fat** do pacote **UsingR**. Ele contém medições corporais de **252 homens**.

Analise as relações entre as seguintes variáveis e verifique se fazem sentido ou se são espúrias:

- **body.fat**: porcentagem de gordura
- **density**: densidade (g/cm²)
- **age**: idade (anos)
- **weight**: peso (libras)
- **height**: altura (polegadas)
- **BMI**: índice de adiposidade `BMI = weight / height²`
- **abdomen**: circunferência do abdômen (cm)