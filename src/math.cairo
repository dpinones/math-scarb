fn add(a: felt252, b: felt252) -> felt252 {
    a + b
}

fn sub(a: felt252, b: felt252) -> felt252 {
    a - b
}

fn mul(a: felt252, b: felt252) -> felt252 {
    a * b
}

fn fib(a: felt252, b: felt252, n: felt252) -> felt252 {
    match n {
        0 => a,
        _ => fib(b, a + b, n - 1),
    }
}