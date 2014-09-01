# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create([
  { name:"Jesse Shawl", age: 25, height: 72 },
  { name:"Justin Bieber", age: 20, height: 34 },
  { name:"Nate Weiner", age: 30, height: 41 },
  { name:"Jenny Lewis", age: 20, height: 52 },
  { name:"Marissa Meyer", age: 39, height: 58 }
])
