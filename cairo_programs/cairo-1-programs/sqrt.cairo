use core::felt252;
use starknet::testing;
use core::debug::PrintTrait;

fn main() -> felt252 {
    let mut result = testing::cheatcode::<'oracle'>(array![1764].span());
    // 'Result len:'.print();
    // result.len().print();
    *result.at(0)
}