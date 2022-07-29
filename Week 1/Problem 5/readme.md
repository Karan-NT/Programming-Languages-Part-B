Write a stream funny-number-stream that is like the stream of natural numbers (i.e., 1, 2, 3, ...)
except numbers divisble by 5 are negated (i.e., 1, 2, 3, 4, -5, 6, 7, 8, 9, -10, 11, ...). Remember a stream
is a thunk that when called produces a pair. Here the car of the pair will be a number and the cdr will
be another stream.
