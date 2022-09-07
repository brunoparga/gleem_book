// Named functions in Gleam are defined using the pub fn keywords.
// (And just `fn` is for anonymous ones)

pub fn add(x: Int, y: Int) -> Int {
  x + y
}

pub fn multiply(x: Int, y: Int) -> Int {
  x * y
}

/// This function takes a function as an argument
pub fn twice(f: fn(t) -> t, x: t) -> t {
  f(f(x))
}

pub fn add_one(x: Int) -> Int {
  x + 1
}

pub fn add_two(x: Int) -> Int {
  twice(add_one, x)
}

// Erlang style
string_builder.to_string(string_builder.reverse(string_builder.new(string)))

// Elixir (and F#) style
string
|> string_builder.new
|> string_builder.reverse
|> string_builder.to_string

// Apparently it won't have to apply only to the first argument!!

// Function arguments are normally annotated with their type, and the
// compiler will check these annotations and ensure they are correct.


pub fn identity(x: some_type) -> some_type {
  x
}

pub fn inferred_identity(x) {
  x
}

// The Gleam compiler can infer all the types of Gleam code without
// annotations and both annotated and unannotated code is equally safe.
// It's considered a best practice to always write type annotations for
// your functions as they provide useful documentation, and they
// encourage thinking about types as code is being written.

pub fn list_of_two(my_value: a) -> List(a) {
  [my_value, my_value]
}

pub fn multi_result(x: a, y: b, condition: Bool) -> Result(a, b) {
  case condition {
    True -> Ok(x)
    False -> Error(y)
  }
}

// OMG labeled arguments. This...
pub fn lame_replace(string: String, pattern: String, replacement: String) {
  // ...
}

// can be written as this:
pub fn replace(
  in string: String,         // type annotations
  each pattern: String,      // are also optional
  with replacement: String,  // in labeled arguments
) {
  // The variables `string`, `pattern`, and `replacement` are in scope here
}

// and called as this:
replace(in: "A,B,C", each: ",", with: " ")

// Labelled arguments can be given in any order
replace(each: ",", with: " ", in: "A,B,C")

// Arguments can still be given in a positional fashion
replace("A,B,C", ",", " ")

// Anonymous functions just lack the `pub` keyword
pub fn run() {
  let add = fn(x, y) { x + y }  // this here is the lambda

  add(1, 2)
}

// Partial application
pub fn add(x: Int , y: Int ) -> Int {
  x + y
}


pub fn run() {
  let add_one = add(1, _)

  add_one(2)
}

// And this is how you pipe to a specific argument
pub fn run() {
  // This is the same as add(add(add(1, 3), 6), 9)
  1
  |> add(_, 3)
  |> add(_, 6)
  |> add(_, 9)
}

// And then there's a shorthand
pub fn run() {
  // This is the same as the example above
  1
  |> add(3)
  |> add(6)
  |> add(9)
}

// The pipe operator will first check to see if the left hand value
// could be used as the first argument to the call, e.g. a |> b(1, 2)
// would become b(a, 1, 2).

// If not it falls back to calling the result of the right hand side
// as a function , e.g. b(1, 2)(a).


// Three-slash comments are function docs that end up in HTML generated
// documentation. Markdown is accepted.

/// Does nothing, returns `Nil`.
///
fn returns_nil(a) -> Nil {
  Nil
}
