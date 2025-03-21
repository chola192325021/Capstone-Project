# Sample dataset
a=c(15, 20, 35, 40, 50, 60, 75, 80, 95, 100)

# Calculate Minimum
min_value <- min(data)
print(paste("Minimum Value:", min_value))

# Calculate Maximum
max_value <- max(data)
print(paste("Maximum Value:", max_value))

# Calculate Mean
mean_value <- mean(data)
print(paste("Mean Value:", mean_value))

# Perform Min-Max Normalization
min_max_normalized <- (data - min_value) / (max_value - min_value)
print("Min-Max Normalized Data:")
print(min_max_normalized)

