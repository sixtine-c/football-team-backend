# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
psg = Team.create(name: "PSG")
manchester = Team.create(name: "Manchester")
real_madrid = Team.create(name: "Real Madrid")

Player.create(name: "Kylian Mbappé", team_id: psg.id)
Player.create(name: "Lionel Messi", team_id: psg.id)
Player.create(name: "Neymar", team_id: psg.id)
Player.create(name: "Kylian Mbappé", team_id: manchester.id)
Player.create(name: "Lionel Messi", team_id: manchester.id)
Player.create(name: "Zizou", team_id: manchester.id)
Player.create(name: "Sixtine", team_id: real_madrid.id)
Player.create(name: "Romuald", team_id: real_madrid.id)
Player.create(name: "Stephou", team_id: real_madrid.id)
