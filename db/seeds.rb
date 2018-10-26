  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |i|
User.create(
  name: "ususario#{i}",
  password: '123456',
  email: "usuario#{i}@gmail.com",
  role: [1, 2].sample)
end
#user_appointment_path(current_user.id, @appointment.id )
