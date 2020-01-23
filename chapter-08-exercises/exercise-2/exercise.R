# Exercise 2: using `*apply()` functions

# Create a *list* of 10 random numbers. Use the `runif()` function to make a 
# vector of random numbers, then use `as.list()` to convert that to a list
random_numbers <- as.list(runif(10))

# Use `lapply()` to apply the `round()` function to each number, rounding it to 
# the nearest 0.1 (one decimal place)
rounded_numbers <- lapply(random_numbers, digits = 1, round)

# Create a variable 'sentence' that contains a sentence of text (something 
# longish). Make the sentence lowercase; you can use a function to help.
sentence <- tolower("As he crossed toward the pharmacy at the corner he involuntarily turned his head because of a burst of light that had ricocheted from his temple, and saw, with that quick smile with which we greet a rainbow or a rose, a blindingly white parallelogram of sky being unloaded from the van—a dresser with mirrors across which, as across a cinema screen, passed a flawlessly clear reflection of boughs sliding and swaying not arboreally, but with a human vacillation, produced by the nature of those who were carrying this sky, these boughs, this gliding façade.")

# Use the `strsplit()` function to split the sentence into a vector of letters.
# Hint: split on `""` to split every character
# Note: this will return a _list_ with 1 element (which is the vector of letters)
split_sentence <- strsplit(sentence, "")

# Extract the vector of letters from the resulting list
letter_vector <- split_sentence[[1]]

# Use the `unique()` function to get a vector of unique letters
unique_letters <- unique(letter_vector)

# Define a function `count_occurrences` that takes in two parameters: a letter 
# and a vector of letters. The function should return how many times that letter
# occurs in the provided vector.
# Hint: use a filter operation!
count_occurrences <- function(letter, letter_vector){
  letter_filter <- letter_vector[letter_vector == letter]
  return (length(letter_filter))
}

# Call your `count_occurrences()` function to see how many times the letter 'e'
# is in your sentence.
count_occurrences('e', letter_vector)

# Use `sapply()` to apply your `count_occurrences()` function to each unique 
# letter in the vector to determine their frequencies.
# Convert the result into a list (using `as.list()`).


# Print the resulting list of frequencies

