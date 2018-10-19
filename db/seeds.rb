# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.destroy_all

AdminUser.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456') if Rails.env.development?
15.times do |i|
  User.create(
    name: Faker::Name.name,
    email: "usuarios#{i}@gmail.com",
    password: "12345678",
    role: [1, 2].sample
  )
end

Ocupation.create([{name:'Constructor'},{name:'Gasfiter'},{name:'Informático'},
                  {name:'Constructor'},{name:'Electricista'},{name:'Profesor'},
                  {name:'Médico'},{name: 'Terapeuta'}])

30.times do
  UserOcu.create(
    user: User.where(role: 2).order('RANDOM()').first,
    ocupation: Ocupation.order('RANDOM()').first,
    Price: Faker::Commerce.price
  )
end
