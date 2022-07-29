Write a function stream-add-zero that takes a stream s and returns another stream. If s would
produce v for its ith element, then (stream-add-zero s) would produce the pair (0 . v) for its
ith element. Sample solution: 4 lines. Hint: Use a thunk that when called uses s and recursion.
Note: One of the provided tests in the le using graphics uses (stream-add-zero dan-then-dog)
with place-repeatedly.
