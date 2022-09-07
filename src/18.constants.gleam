pub const start_year = 2101
pub const end_year = 2111

pub fn is_before(year: Int) -> Bool {
  year < start_year
}

pub fn is_during(year: Int) -> Bool {
  start_year <= year && year <= end_year
}

// Constants are inlined by the compiler
// as such, they can be used in case expression guards
pub describe(year: Int) -> String {
  case year {
    year if year < start_year -> "Before"
    year if year > end_year -> "After"
    _ -> "During"
  }
}

// Constants can be given type annotations
pub const name: String = "Gleam"
pub const size: Int = 100

// These annotations serve as documentation or can be used to provide
// a more specific type than the compiler would otherwise infer.
