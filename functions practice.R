# start out with a number to test
x <- 3

# you'll want your function to return this number
x^2
square <- function(x) {
	squared_val <- x * x
	return(squared_val)}
# test it out
square(x)
square(53)
53^2 # does this match?

#raise function
raise <- function(x, power) {
	val <- x^power
	return(val)
}

# test with
raise(x = 2, power = 4)
# should give you
2^4

raise <- function(x, power = 2) {
	val <- x^power
	return(val)
}

# test
raise(x = 5)
# should give you
5^2

####2.6 Exercise
### PART 3 ####

prop <- function(x, percentage = FALSE) {
	n <- length(x)
	mean_val <- sum(x) / n
	if (percentage) {
		mean_val <- mean_val * 100
	} else {
		# don't actually need this else statement!
		mean_val <- mean_val
	}
	return(mean_val)
}

x <- c(234, 634, 234, 124, 5437, 2354345)

demeaned_x <- x - mean(x)
squared_demeaned_x <- demeaned_x^2
sum_of_squares <- sum(squared_demeaned_x)
n_minus_1 <- length(x) - 1
std_dev <- sqrt(sum_of_squares / n_minus_1)

sd(x)

x <- c(3, 6, NA)

new_sd <- function(x, na.rm = TRUE) {
	if (na.rm) {
		# remove NAs
		new_x <- na.omit(x)
	} else {
		# don't remove NAs
		new_x <- x
	} # will have a new value of x if NAs are removed, same value if not
	if (length(new_x) <= 1) {
		return_val <- NA
	} else {
		# calculate the standard deviation using new x and save as return_val
		demeaned_x <- new_x - mean(new_x)
		squared_demeaned_x <- demeaned_x^2
		sum_of_squares <- sum(squared_demeaned_x)
		n_minus_1 <- length(new_x) - 1
		return_val <- sqrt(sum_of_squares / n_minus_1)
	}
	return(return_val)
}
new_sd(nlsy$income)
sd(nlsy$income)
sd(nlsy$income, na.rm = TRUE)
new_sd(c(1, NA, NA))
new_sd(c(1))

new_sd <- function(x) {
	sd(x, na.rm = TRUE)
}

##

nlsy <- read.csv(here::here("data", "clean", "nlsy-complete-cases.rds"))
prop(nlsy$glasses)




