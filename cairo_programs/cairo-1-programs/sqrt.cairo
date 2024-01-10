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

fn main() -> felt252 {
    let request = Request { n: 1764 };
    let mut request_bytes = ArrayTrait::new();
    request.serialize(ref request_bytes);

    let mut result_bytes = testing::cheatcode::<'oracle'>(request_bytes.span());
    let result = Serde::<Result>::deserialize(ref result_bytes).unwrap();

    result.n
}
