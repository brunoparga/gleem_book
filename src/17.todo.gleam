fn favourite_number() -> Int {
  // The type annotations says this returns an Int, but we don't need
  // to implement it yet.
  todo
}

pub fn main() {
  favourite_number() * 2
}

// todo takes an argument
fn favourite_number() -> Int {
  todo("We're going to decide which number is best tomorrow")
}

// The warning also includes the expected type of the expression that
// needs to replace the todo. This can be a useful way of asking the
// compiler what type is needed if you are ever unsure.

fn main() {
  my_complicated_function(
    // What type does this function take again...?
    todo
  )
}