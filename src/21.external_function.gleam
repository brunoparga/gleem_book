// Import functions from other languages in the same runtime (Erlang
// or JavaScript). Must annotate the type and the compiler relies on it.

pub external fn random_float() -> Float =
  "rand" "uniform"  // from erlang

// Elixir modules start with `Elixir.`
pub external fn inspect(a) -> a =
  "Elixir.IO" "inspect"

// In src/my-module.mjs
export function run() {
  return 0;
}

// In src/my_program.gleam
pub external fn run() -> Int =
  "./my-module.js" "run"

// Gleam uses the JavaScript import syntax, so any module imported
// must use the esmodule export syntax, and if you are using the
// NodeJS runtime the file extension must be .mjs.

// External functions can have labeled arguments <3
pub external fn any(in: List(a), satisfying: fn(a) -> Bool) =
  "my_external_module" "any"

any(in: my_list, satisfying: is_even)
any(satisfying: is_even, in: my_list)
