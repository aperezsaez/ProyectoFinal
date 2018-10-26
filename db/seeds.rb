  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 #AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
ocupacion = %w[Profesor Gasfiter Carpintero Mecanico Medico Masajista]
 15.times do |i|
   u = User.new(name: "ususarie#{i}", password: '123456',
               email: "usuarie#{i}@gmail.com", role: [1, 2].sample,
               created_at: Faker::Number.number(1).to_i.day.ago)
   if u.role = 2
     u.ocupation = ocupacion.sample
   end
   u.save
 end
