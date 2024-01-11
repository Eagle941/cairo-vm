use core::felt252;
use starknet::testing;
use core::debug::PrintTrait;

#[derive(Drop, Serde)]
struct Request {
    n: felt252
}

#[derive(Drop, Serde)]
struct Result {
    n: felt252
}

// extern fn oracle<const selector: felt252>(
//     method: Span<felt252>,
//     arg: Span<felt252>,
// ) -> Span<felt252> implicits() nopanic;

fn main() -> bool {
    let num = 1764;

    let request = Request { n: num };
    let mut request_bytes = ArrayTrait::new();
    request.serialize(ref request_bytes);

    let mut result_bytes = testing::cheatcode::<'oracle'>(request_bytes.span());
    let result = Serde::<Result>::deserialize(ref result_bytes).unwrap();

    result.n * result.n == num
}   
