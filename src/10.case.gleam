case some_number {
  0 -> "Zero"
  1 -> "One"
  2 -> "Two"
  n -> "Some other number" // This matches anything
}

// If in Gleam is like when in Erlang?

case some_bool {
  True -> "It's true!"
  False -> "It's not true."
}

// case is an expression and returns a value assignable to a variable

let description =
  case True {
    True -> "It's true!"
    False -> "It's not true."
  }

description  // => "It's true!"

// Simple destructuring

case xs {
  [] -> "This list is empty"
  [a] -> "This list has one element"
  [a, b] -> "This list has two elements"
  _other -> "This list has more than two elements"
}

// Complex destructuring

case xs {
  [[]] -> "The only element is an empty list"
  [[], ..] -> "The 1st element is an empty list"
  [[4], ..] -> "The 1st element is a list of the number 4"
  other -> "Something else"
}

// This match error at least is only caught on runtime

let [a] = [1]    // a is 1
let [b] = [1, 2] // Runtime error! The pattern has 1 element but the value has 2
                 // Haskell seems to throw a compilation error instead

// Can match on multiple values

case x, y {
  1, 1 -> "both are 1"
  1, _ -> "x is 1"
  _, 1 -> "y is 1"
  _, _ -> "neither is 1"
}

// as keyword to assign a name to a subpattern

case xs {
  [[_, ..] as inner_list] -> inner_list
  other -> []
}

// If in Gleam is like when in Erlang?

case ints {
  [a, b, c] if a == b && b != c -> "ok"
  _other -> "ko"
}

case floats {
  [a, b, c] if a >. b && a <=. c -> "ok"
  _other -> "ko"
}

// Alternative clause patterns

case number {
  2 | 4 | 6 | 8 -> "This is an even number"
  1 | 3 | 5 | 7 -> "This is an odd number"
  _ -> "I'm not sure"
}

// If the patterns declare variables then the same variables must be
// declared in all patterns, and the variables must have the same type
// in all the patterns.

case list {
  [1, x] | x -> x // Error! Int != List(Int)
  _ -> 0
}
