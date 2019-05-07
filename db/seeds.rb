require 'faker'

10.times do
  Restaurant.create(
    name: Faker::Superhero.name,
    address: "#{rand(1..5)}#{rand(6..15)} #{Faker::Superhero.power}",
    category: Faker::Superhero.descriptor
  )
end
