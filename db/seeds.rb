# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.new(
#   email: "1234@localhost", encrypted_password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil
# )
# user.save(validate: false)

5.times do |i|
  Event.create(title: "Huge event!!", description: "I cannot stress dis enougth!!!", datetime: "2001-02-03T04:05:06", location: "Baker's street", creator_id: User.first.id)
end