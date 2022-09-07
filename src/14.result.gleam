pub type Result(value, reason) {
  Ok(value)
  Error(reason)
}

pub fn lookup(name, phone_book): Result(String, String) {
  // ... we found a phone number in the phone book for the given name here
  Ok(phone_number)
}

pub type MyDatabaseError {
  InvalidQuery
  NetworkTimeout
}

pub fn insert(db_row) {
  // ... something went wrong connecting to a database here
  Error(NetworkTimeout)
}

// When we have a Result type returned to us from a function we can
// pattern match on it using case to determine whether we have an Ok
// result or an Error result.

// The standard library gleam/result module contains helpful functions
// for working with the Result type, make good use of them!
