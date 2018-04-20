10.times do
  breed = Breed.create!(breed: Faker::Dog.breed)
  10.times do
    breed.dogs.create! do |dog|
      dog.name = Faker::Dog.name
      dog.owner = Owner.create(email: Faker::Internet.email, name: Faker::Name.name)
    end
  end
end