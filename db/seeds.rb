# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Team.destroy_all
Player.destroy_all

10.times do
  team = Team.create(
    name: Faker::Sports::Basketball.team,
    coach: Faker::Sports::Basketball.coach,
  )
end
  4.times do
    player = Player.create(
      name: Faker::Sports::Basketball.player,
      position: Faker::Sports::Basketball.position,
      team_id: team.id,
    )
  end
end

puts "seeded #{Team.all.size} Teams"
puts "first team name: #{Team.first.name}"
puts "seeded #{Player.all.size} Player"