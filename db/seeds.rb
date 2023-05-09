require 'faker'

puts "🌱 Seeding spices..."

personalities = ["Calm", "Hasty", "Hardy", "Bold", "Relaxed", "Sassy", "Quiet", "Kind"]
cat_genders = ["Male", "Female", "Nyan-Binary"]
skills = ["Lay Down", "Play Dead", "Roll Over", "Cross Paws", "Backup", "Fetch", "Open Door", "Close Door", "Speak", "Shake", "High Five", "Twirl"]

15.times do 
    Trainer.create(name: Faker::Name.first_name, payrate: rand(16..30), personality: personalities[rand(0...personalities.length)])
end

active_trainer_ids = Trainer.all.map {|trainer| trainer.id}

20.times do
    Pet.create(name: Faker::Creature::Cat.name, breed: Faker::Creature::Cat.breed, species: "Cat", age: rand(0..22),
     personality: personalities[rand(0...personalities.length)],
     gender: cat_genders[rand(0..2)],
     working_on: skills[rand(0...skills.length)],
     trainer_id: active_trainer_ids[rand(0...active_trainer_ids.length)])
end

20.times do
    Pet.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, species: "Dog", age: rand(0..22),
     personality: personalities[rand(0...personalities.length)],
     gender: Faker::Gender.type,
     working_on: skills[rand(0...skills.length)],
     trainer_id: active_trainer_ids[rand(0...active_trainer_ids.length)])
end

puts "✅ Done seeding!"
