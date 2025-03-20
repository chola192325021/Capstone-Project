# Sample data
data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 4, 5, 4, 5)
)

# Build the model
model <- lm(y ~ x, data = data)

# Print summary
summary(model)

# Predict y for a new value of x
predict(model, data.frame(x = 6))
