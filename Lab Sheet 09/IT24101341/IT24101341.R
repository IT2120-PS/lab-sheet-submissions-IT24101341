setwd("C:\\Users\\a\\Desktop\\IT24101341")
#exercise 
#part 1
set.seed(123)  
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time
#part 2
t.test(baking_time, mu = 46, alternative = "less")