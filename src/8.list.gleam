// Lists are homogeneous

[1, 2, 3, 4]  // List(Int)
[1.22, 2.30]  // List(Float)
[1.22, 3, 4]  // Type error!

[1, ..[2, 3]]  // => [1, 2, 3]    // Weird cons syntax?

// Lists are immutable

let x = [2, 3]
let y = [1, ..x]

x  // => [2, 3]
y  // => [1, 2, 3]
