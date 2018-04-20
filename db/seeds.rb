10.times do
  breed = Breed.create!(breed: Faker::Dog.breed)
  10.times do
    breed.dogs.create! do |dog|
      dog.name = Faker::Dog.name
      dog.owner = Owner.create(email: Faker::Internet.email, name: Faker::Name.name)
    end
  end
end

20.times do
  competition = Competition.create! do |c|
    c.name = Faker::HitchhikersGuideToTheGalaxy.specie
    c.location = Faker::Team.state
    c.respected = [true, false].sample
    c.dogs = Dog.all.sample(10)
  end
end
