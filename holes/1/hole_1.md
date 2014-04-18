# Hole 1: FizzBuzz

Ah, FizzBuzz. A veritable classic.  

For this hole, you need to emit the numbers 1 to n as a comma separated list (without spaces). For example:

```Ruby
HoleOne.play(3)
# => 1,2,3
```

There's a twist though; you must replace every number divisible by 5 with "Fizz", every number divisible by 3 with "Buzz", and every number divisible by 5 and 3 with "FizzBuzz".  For example:

```Ruby
HoleOne.play(17)
# => 1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17
```