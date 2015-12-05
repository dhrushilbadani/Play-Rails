# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


%w(Jon Tyrion Daenarys Brock).each do |name|
  user = User.create name: name, email: name+"@play.com", password: 'password'
  user.games.create(name: 'football '+name, users: 1, location: 'Shivaji Park, Mumbai, Maharashtra, India')
  user.games.create(name: 'baseball '+name, users: 1, location: 'Shivaji Park, Mumbai, Maharashtra, India')
  user.save
end
