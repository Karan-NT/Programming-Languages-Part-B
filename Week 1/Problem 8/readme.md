Write a function cycle-lists that takes two lists xs and ys and returns a stream. The lists may or
may not be the same length, but assume they are both non-empty. The elements produced by the
stream are pairs where the first part is from xs and the second part is from ys. The stream cycles
forever through the lists. For example, if xs is '(1 2 3) and ys is '("a" "b"), then the stream
would produce, (1 . "a"), (2 . "b"), (3 . "a"), (1 . "b"), (2 . "a"), (3 . "b"), (1 . "a"),
(2 . "b"), etc.
Sample solution is 6 lines and is more complicated than the previous stream problems. Hints: Use one
of the functions you wrote earlier. Use a recursive helper function that takes a number n and calls
itself with (+ n 1) inside a thunk.
