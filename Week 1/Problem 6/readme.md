Write a stream dan-then-dog, where the elements of the stream alternate between the strings "dan.jpg"
and "dog.jpg" (starting with "dan.jpg"). More specically, dan-then-dog should be a thunk that
when called produces a pair of "dan.jpg" and a thunk that when called produces a pair of "dog.jpg"
and a thunk that when called... etc.
