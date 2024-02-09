//use core::felt252;
//use starknet::testing;
//use core::debug::PrintTrait;
use alexandria_math::is_power_of_two::is_power_of_two;

#[derive(Drop, Serde)]
struct Request {
    n: u64
}

#[derive(Drop, Serde)]
struct Result {
    n: u64
}

fn run() -> bool {
    is_power_of_two(0) == false;

    let num = 1764;

    //let request = Request { n: num };
    //let mut request_bytes = ArrayTrait::new();
    //request.serialize(ref request_bytes);

    //let mut result_bytes = testing::cheatcode::<'oracle'>(request_bytes.span());
    //let result = Serde::<Result>::deserialize(ref result_bytes).unwrap();

    //result.n * result.n == num
    true
}
