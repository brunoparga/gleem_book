// inside module src/nasa/rocket_ship.gleam

fn count_down() {
  "3... 2... 1..."
}

fn blast_off() {
  "BOOM!"
}

pub fn launch() {
  [count_down(), blast_off()]
}
