# Hole 3: String Calculator

Another class. 

The string calculator accepts string of numbers, sums the numbers, and returns an integer.  For example:

```Ruby
HoleThree.play("1,2")
# => 3
```

The string calculator must:

1. Accept a single number e.g. `HoleThree.play("1") # => 1`

2. Accept an empty string e.g. `HoleThree.play("") # => 0`

3. Accept many numbers e.g. `HoleThree.play("1,2,3") # => 6`

4. Accept custom delimiters 
  - The delimiter is prepended to the string
  - The delimiter start with `//` and ends with a newline
  - For example: `HoleThree.play("//;\n1;2;3") # => 6`

