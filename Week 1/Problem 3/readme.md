Write a function list-nth-mod that takes a list xs and a number n. If the number is negative,
terminate the computation with (error "list-nth-mod: negative number"). Else if the list is
empty, terminate the computation with (error "list-nth-mod: empty list"). Else return the ith
element of the list where we count from zero and i is the remainder produced when dividing n by the
list's length. Library functions length, remainder, car, and list-tail are all useful { see the Racket
documentation.
