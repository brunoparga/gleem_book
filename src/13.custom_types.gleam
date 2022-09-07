// Gleam's custom types are named collections of keys and values.
// They are similar to objects in object oriented languages, 🤯
// though they don't have methods.

// Custom types are defined with the type keyword.

pub type Cat {
  Cat(name: String, cuteness: Int)
}

fn cats(): List(Cat) {
  // Labelled fields can be given in any order
  let cat1 = Cat(name: "Nubi", cuteness: 2001)
  let cat2 = Cat(cuteness: 1805, name: "Biffy")

  // Alternatively fields can be given without labels
  let cat3 = Cat("Ginny", 1950)   // I presume then you need to follow
                                  // the order they're defined in the
                                  // constructor

  [cat1, cat2, cat3]
}

// Multiple constructors - this is where the fun begins
// A Bool is a value that is either `True` or `False`
pub type Bool {
  True
  False
}

// Constructors don't need to have the same properties
type User {
  LoggedIn(name: String)  // A logged in user with a name
  Guest                   // A guest user with no details
}

let sara = LoggedIn(name: "Sara")
let rick = LoggedIn(name: "Rick")
let visitor = Guest

// Can pattern match on type constructors
fn get_name(user) {
  case user {
    LoggedIn(name) -> name
    Guest -> "Guest user"
  }
}

// Custom types can also be destructured with a let binding.
type Score {
  Points(Int)
}

let score = Points(50)
let Points(p) = score

p // => 50


// When destructuring you may also use discards (_) or spreads (..).
pub type Cat {
  Cat(name: String, cuteness: Int, age: Int)
}

let cat = Cat(name: "Felix", cuteness: 9001, age: 5)


// You will need to specify all args for a pattern match, or alternatively use the spread operator.
// All fields present
let Cat(name: name, cuteness: _, age: _) = cat
name // "Felix"

// Other fields ignored by spreading
let Cat(age: age, ..) = cat
age // 5

// Named accessors
let cat = Cat(name: "Nubi", cuteness: 2001)
cat.name // This returns "Nubi"
cat.cuteness // This returns 2001

// Generics
pub type Box(inner_type) {
  Box(inner: inner_type)
}

pub fn main() {
  let a = Box(123) // type is Box(Int)
  let b = Box("G") // type is Box(String)
}

// The type is defined with the opaque keyword (like Erlang)
pub opaque type Counter {
  Counter(value: Int)
}

pub fn new() {
  Counter(0)
}

pub fn increment(counter: Counter) {
  Counter(counter.value + 1)
}

// Record updates
import gleam/option.{Option}

pub type Person {
  Person(
    name: String,
    gender: Option(String),
    shoe_size: Int,
    age: Int,
    is_happy: Bool,
  )
}

pub fn have_birthday(person) {
  // It's this person's birthday, so increment their age and
  // make them happy
  Person(..person, age: person.age + 1, is_happy: True)   // works like JS's `...`
}

// Erlang interop
// At runtime custom type records with no contained values become atoms.
// The atoms are written in snake_case rather than CamelCase so
// LoggedIn becomes logged_in.

// Custom type records with contained values are Erlang records. The
// Gleam compiler generates an Erlang header file with a record
// definition for each constructor, for use from Erlang.


// Gleam
Guest
LoggedIn("Kim")

// # Elixir
:guest
{:logged_in, "Kim"}

// % Erlang
guest,
{logged_in, <<"Kim">>}.
