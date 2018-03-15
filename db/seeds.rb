# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

10.times do |u|
  User.create!(email: "email#{u}@gmail.com",
              password: "123456",
              age: Random.rand(18..100),
              gender: ["Male", "Female"].sample,
              name:["Carlos", "Jose", "Pedro", "Juan", "Daniel", "Gabriela", "Paola", "Daniela", "Victoria", "Verónica"].sample,
              bio:["Profesor", "Médico", "Ingeniero", "Periodista", "Arquitecto", "Carpintero", "Obrero"].sample,
              photo:["Bella", "Hermosa", "Fea", "Morena", "Rubia", "Pelirojo", "Gordo", "Flaco", "Alto", "Bajo"].sample
              )
end
