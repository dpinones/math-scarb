//! Utilities for quaireaux standard library.
use array::ArrayTrait;
use option::OptionTrait;

fn fib(n: felt252) -> felt252 {
    fib_internal(0, 1, n)
}

fn fib_internal(a: felt252, b: felt252, n: felt252) -> felt252 {
    check_gas();
    
    match n {
        0 => a,
        _ => fib_internal(b, a + b, n - 1),
    }
}

// Fake macro to compute gas left
// TODO: Remove when automatically handled by compiler.
#[inline(always)]
fn check_gas() {
    gas::withdraw_gas_all(get_builtin_costs()).expect('Out of gas')
}