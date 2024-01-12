
# 1. Definición de las variables: predictor y target

x <- seq(1, 10, 1) # secuencia de números del 1 al 10
y <- rnorm(10, 0, 1) # aleatorios distribución normal (media 0, varianza 1)

# 2. Análisis relación entre las variables

plot(x, y) # scatterplot ¿existe alguna relación lineal?
cor(x, y) # correlación entre las variables

# 3. Definición del modelo lineal

modelo_lineal <- lm(y ~ 0 + x) # no hay intercepto
summary_modelo <- summary(modelo_lineal)

# 4. Resultados del modelo y análisis

y_pred <- modelo_lineal$fitted.values # valores predichos
paste0("R2: ", round(summary_modelo$r.squared, 3)) # varianza explicada

hist(modelo_lineal$residuals, xlab="residuos", ylab="freq", main="Distribución residuos")

plot(x, y, col = "blue", pch = 16, main = "Datos reales y predichos")
points(x, y_pred, col = "red", pch = 16)
legend("topright",legend = c("real", "pred"), col = c("blue", "red"), pch = 16)