# Ruby Golf :golf:

The object of Ruby golf is to complete coding challenges in as few characters as possible (not including whitespace).

### Getting Started

Each hole is the `/holes` directory contains brief README explanation of the hole and a mostly empty implementation. Your job is to complete the implementation.

Initially, all holes will raise a `NotImplementedError`.  When a hole raises this error, it is not scored, and does not contribute to your final score.

### Testing

As you iterate, you can test via `./test <hole_numbers>` e.g `./test 1 2`.

### Scoring
To generate a score for a completed implementation, run the `./play` script.

For example, when you're satisfied with hole 1, run `./play 1`.  This will run hole one's specs and then generate a score.

You can also score multiple holes with `./play 1 2 3`

When you're satisfied with your implementation of every hole, run `./play` to score all the holes.
