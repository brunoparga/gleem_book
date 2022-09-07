// For these situations Gleam provides assert, a keyword that causes
// the program to crash if a pattern does not match.

assert Ok(i) = parse_int("123")   // No need to handle the Error case
i // => 123

assert Ok(i) = parse_int("not an int")  // Program crashes

// https://github.com/gleam-lang/otp
