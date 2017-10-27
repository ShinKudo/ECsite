# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |i|
  Book.create(title: 'title#{i}', author: 'author#{i}', published_on: (Date.now - Random.rand(1 .. 4000)), showint: true, price: Random.rand(500 .. 10000).round(-1))
end
