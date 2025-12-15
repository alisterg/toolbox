# Rust

## Basic

```
/// Doc comments
/// Note you can use markdown

// Importing
use std::io;
use std::cmp::Ordering;

// Functions
fn my_function() -> i32 {
    // immutable by default
    let mut myvar = String::new();

    let _ = io::stdin()
        .read_line(&mut myvar); // Returns a Result type (Ok or Err)
 
    io::stdin()
        .read_line(&mut myvar)
        .expect("this is pretty much the same as above");

    let abc = if 2 > 1 { 1 } else { 4 };

    // Implicit returns
    if abc > 5 {
        0;
    } else if abc < 3 {
        1;
    } else {
        -1;
    }
}
```

## Pattern Matching

```
/// PATTERN MATCHING
let x = 1;
match x {
    1 => println!("one"),
    2 => println!("two"),
    3..=5 => println!("three through five"),
    _ => println!("anything else"),
}
```

## Arrays (fixed length)

```
let a: [i32; 5] = [1, 2, 3, 4, 5];
let a = [1, 2, 3, 4, 5]; // implicit typing
let first = a[0];

for element in a {
    println!("the value is: {element}");
}

for number in (1..4) {
    println!("{number}!");
}
```

## Tuples (fixed length)

```
let tup: (i32, f64, u8) = (500, 6.4, 1);
let tup = (500, 6.4, 1); // implicit typing
let (x, y, z) = tup; // destructuring
```

