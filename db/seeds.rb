# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |i|
  Event.create(title: "Huge event!!", description: "I cannot stress dis enougth!!!", datetime: "2001-02-03T04:05:06", location: "Baker's street")
end