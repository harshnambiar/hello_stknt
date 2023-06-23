#[contract]
mod Hello {
   struct Storage {
       times: felt252
   }

   #[event]
   fn HellosIncreased(times: felt252) {}

   #[external]
   fn increase_hellos() {
      let new_hellos = times::read() + 1;
      times::write(new_hellos);
      HellosIncreased(new_hellos);
   }

   #[view]
   fn get_hellos() -> felt252 {
       times::read()
   }
}
