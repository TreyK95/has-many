# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Team.destroy_all

10.times do
  w = Faker::Sports::Basketball.team
  x = Faker::Sports::Basketball.coach
  y = Faker::Sports::Basketball.player
  z = Faker::Sports::Basketball.position
  Team.create(name: "#{x} #{y} #{z}")
end
puts "seeded #{Team.all.size} Teams"
puts "first team name: #{Team.first.name}"