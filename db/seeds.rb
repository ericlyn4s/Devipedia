# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do

User.create(
  email: Faker::Internet.email,
  password: "hellothere1",
  password_confirmation: "hellothere1"
)
end
users = User.all

25.times do
  Wiki.create!(
    title: Faker::Name.name,
    body: Faker::Markdown.inline_code,
    user_id: users.sample
  )
end
