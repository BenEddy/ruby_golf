# Hole 2: CSV parsing

For this hole, you'll need to parse a CSV file and find the names of the tallest and shortest users.  An example CSV can be found in this directory.  

Return the results as a hash.  For example:

```Ruby
file = File.open("my_file")
HoleTwo.play(file)
# => {tallest: "Jasper", shortest: "Lazer"}
```

## Here's the catch:
You may not use a CSV parsing library.  You gotta roll the thing yourself. 
