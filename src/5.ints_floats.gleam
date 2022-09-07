// Ints

1
2
-3
4001
0b00001111  // binary
0o17        // octal
0xF         // hexadecimal

1 + 1 // => 2
5 - 1 // => 4
5 / 2 // => 2 (integer division)
3 * 3 // => 9
5 % 2 // => 1

2 > 1  // => True
2 < 1  // => False
2 >= 1 // => True
2 <= 1 // => False

1_000_000 // One million

// Floats

1.5
2.0
-0.1
// -1.03e17 -> this syntax, while valid in Erlang, is not valid in Gleam.

1.0 +. 1.4 // => 2.4
5.0 -. 1.5 // => 3.5
5.0 /. 2.0 // => 2.5
3.0 *. 3.1 // => 9.3

2.0 >. 1.0  // => True
2.0 <. 1.0  // => False
2.0 >=. 1.0 // => True
2.0 <=. 1.0 // => False

1_000_000.0 // One million, but float.
