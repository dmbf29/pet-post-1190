puts "Cleaning the DB..."
Pet.destroy_all

puts "Creating pets...."
30.times do
  Pet.create!(
    name: Faker::Fantasy::Tolkien.character,
    species:  Pet::SPECIES.sample,
    address: Faker::Address.street_address,
    found_on: Date.today - rand(1..10)
  )
end
puts ".. created #{Pet.count} pets"
