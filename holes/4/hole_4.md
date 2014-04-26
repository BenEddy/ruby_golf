# Hole 4: Drawing Rectangles

For this hole, you will be provided dimensions for a rectangle and should return a string drawing of the rectangle. For example:

```Ruby
HoleFour.play(width: 5, height: 10)
#####
#   #
#   #
#   #
#   #
#   #
#   #
#   #
#   #
#####
```

By default, you must draw the rectangle using "#" characters, but you also accept a character override.  For example:

```Ruby
HoleFour.play(width: 5, height: 5, character: "$")
$$$$$
$   $
$   $
$   $
$$$$$
```

Lastly, you must accept a "filled" option.  By default, the rectangle should *not* be filled.  However, when the `:filled` options is `true`, the rectangle must be filled. For example:

```Ruby
HoleFour.play(width: 8, height: 4, filled: true)
########
########
########
########
```
