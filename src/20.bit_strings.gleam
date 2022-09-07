// Erlang binaries

// By default a Bit String segment represents 8 bits, also known as 1 byte.

// This is the number 3 as an 8 bit value.
// Written in binary it would be 00000011
<<3>>


// You can also specify a bit size using either short hand or long form.
// These are the exact same value as above
// Shorthand
<<3:8>>

// Long Form
<<3:size(8)>>

// You can specify any positive integer as the bit size.
// This is not same as above, remember we're working with a series of 1s and 0s.
// This Bit String is 16 bits long: 0000000000000011
<<3:size(16)>>


// You can have any number of segments separated by commas.
// This is True
// <<0000, 001, 1>> == <<0000 001 1>> == <<0000 0011>> == <<3>>
<<0:4, 1:3, 1:1>> == <<3>>

// If unit is used, size must also be present
// This is True
<<3:size(4)-unit(4)>> == <<3:size(16)>>  // options are separated by a dash?

// The utf8, utf16 and utf32 options let you put a String directly into a Bit String.
<<"Hello Gleam 💫":utf8>>

// The bit_string option lets you put any other Bit String into a Bit String.
let a = <<0:1, 1:1, 1:1>>
<<a:bit_string, 1:5>> == <<"a":utf8>> // True

// 01100001 == 0x61 == 97