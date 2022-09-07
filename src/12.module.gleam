//// You may add user facing documentation at the head of modules with
//// a module documentation comment //// per line. Markdown is
//// supported and this text will be included with the module's entry
//// in generated HTML documentation.

// import unix/cat
// import animal/cat as kitty
// import animal/cat.{Cat, stroke}

// pub fn main() {
//   let kitty = Cat(name: "Nubi")
//   stroke(kitty)
// }

// Prelude
import gleam

/// This definition locally overrides the `Result` type
/// and the `Ok` constructor.
pub type Result {
  Ok
}

/// The original `Result` and `Ok` can still be used
pub fn go() -> gleam.Result(Int, Bool) {
  gleam.Ok(1)
}

// The prelude module contains these types:

// BitString
// Bool
// Float
// Int
// List(element)
// Nil
// Result(value, error)
// String
// UtfCodepoint

// And these values:

// Error
// False
// Nil
// Ok
// True
