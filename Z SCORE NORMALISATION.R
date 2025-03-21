# Sample dataset
data <- c(15, 20, 35, 40, 50, 60, 75, 80, 95, 100)

# Calculate Mean and Standard Deviation
mean_value <- mean(data)
sd_value <- sd(data)

# Perform Z-Score Normalization
z_score_normalized <- (data - mean_value) / sd_value

# Print results
print(paste("Mean Value:", mean_value))
print(paste("Standard Deviation:", sd_value))
print("Z-Score Normalized Data:")
print(z_score_normalized)
