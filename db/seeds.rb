  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if AdminUser.where(email: 'admin@example.com').blank ?
100.times do |i|
User.create(
  name: "ususario#{i}",
  password: '123456',
  email: "usuario#{i}@gmail.com",
  role: [1, 2].sample)
end
