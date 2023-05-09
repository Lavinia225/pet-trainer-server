require 'faker'

puts "🌱 Seeding spices..."

personalities = ["Calm", "Hasty", "Hardy", "Bold", "Relaxed", "Sassy", "Quiet", "Kind"]

15.times do 
    Trainer.create(name: Faker::Name.first_name, payrate: rand(16..30), personality: personalities[rand(0...personalities.length)])
end

puts "✅ Done seeding!"

=begin
create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "trainer_id"
    t.string "species"
    t.string "breed"
    t.string "working_on"
    t.integer "age"
    t.string "gender"
    t.string "personality"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "payrate"
    t.string "personality"
=end

