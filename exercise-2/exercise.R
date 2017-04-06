# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  return (paste(c("The difference in lengths is", abs(length(a) - length(b))), collapse=" "));
}

# Pass two vectors of different length to your `CompareLength` function
vectorOne <- c(1, 2, 3, 4, 5)
vectorTwo <- c(6, 7, 8)
CompareLength(vectorOne, vectorTwo)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  lengthDiff <- CompareLength(a, b)
  if(length(a) > length(b)) {
    return (paste(c("Your first vector is longer by", abs(length(a) - length(b)), "elements"), collapse=" "))
  } else if (length(a) < length(b)) {
    return (paste(c("Your second vector is longer by", abs(length(a) - length(b)), "elements"), collapse=" "))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vectorOne, vectorTwo)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference2 <- function(a, b) {
  lengthDiff <- CompareLength(a, b)
  if(length(a) > length(b)) {
    return (paste(c(deparse(substitute(a)), "is longer by", abs(length(a) - length(b)), "elements"), collapse=" "))
  } else if (length(a) < length(b)) {
    return (paste(c(deparse(substitute(b)), "is longer by", abs(length(a) - length(b)), "elements"), collapse=" "))
  }
}
