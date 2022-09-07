#(10, "hello") // Type is #(Int, String)
#(1, 4.2, [0]) // Type is #(Int, Float, List(Int))

tuple("foo", False, [3.14])   // Old syntax, still works but is deprecated

let my_tuple = #("one", "two")
let first = my_tuple.0   // "one"
let second = my_tuple.1 // "two"