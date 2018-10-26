  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 #AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

 100.times do |i|
   User.create(name: "ususarie#{i}", password: '123456',
               email: "usuarie#{i}@gmail.com", role: [1, 2].sample,
               created_at: Faker::Number.number(1).to_i.day.ago)
 end
