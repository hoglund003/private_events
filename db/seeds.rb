User.delete_all
Event.delete_all

user = User.new(
  email: "1234@localhost", encrypted_password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil
)
user.save(validate: false)

user = User.new(
  email: "jerac@localhost", encrypted_password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil
)
user.save(validate: false)

all_users = User.limit(2)

5.times do |i|
  Event.create(title: "Huge event!!", description: "I cannot stress dis enougth!!!", datetime: "2001-02-03T04:05:06", location: "Baker's street", creator_id: all_users[0].id)
end

5.times do |i|
  Event.create(title: "Moderat event", description: "I CAN stress dis enougth!!!", datetime: "2001-02-03T04:05:06", location: "Maker's street", creator_id: all_users[1].id)
end

