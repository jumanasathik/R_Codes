control <- c(10.2, 9.8, 10.5, 11.0, 9.9)
treated <- c(14.5, 15.2, 14.8, 15.0, 14.9)

t_test_result <- t.test(control, treated)

print(t_test_result)
