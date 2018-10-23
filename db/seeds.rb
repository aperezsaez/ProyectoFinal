# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
User.create(
  name: "ususario#{i}",
  password: '123456',
  email: "usuario#{i}@gmail.com")
end
User.create(email: "gonzalo@desafiolatam.com",
 password:"12345678",
 address:"Ezequías Allende 2361, Santiago, Chile")  
