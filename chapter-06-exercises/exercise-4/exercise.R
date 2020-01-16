# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string_1, string_2){
  longer <- nchar(string_1)
  shorter <- nchar(string_2)
  if (longer < shorter){
    temp <- longer
    longer <- shorter
    shorter <- temp
  }
  double_short = shorter * 2
  return (longer >= double_short)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(is_twice_as_long("12", "1234"))
print(is_twice_as_long("12", "12"))
print(is_twice_as_long("12", "123"))
print(is_twice_as_long("123", "12"))
print(is_twice_as_long("12345", "12"))


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string_1, string_2){
  longer <- nchar(string_1)
  shorter <- nchar(string_2)
  description <- "first"
  if (nchar(string_2) > longer){
    longer <- nchar(string_2)
    shorter <- nchar(string_1)
    description <- "second"
  }
  difference <- longer - shorter
  if (difference == 0){
    return("Your strings are the same length!")
  } else {
    return(paste("Your", description, "string is longer by", difference, "characters"))
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
print(describe_difference("12", "1234"))
print(describe_difference("12345", "12"))
print(describe_difference("12", "12"))
