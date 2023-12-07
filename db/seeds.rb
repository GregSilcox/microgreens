# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin = User.find_or_create_by(email: 'greg.silcox@gmail.com') do |user|
  user.password = 'Wordless.1234'
  user.password_confirmation = 'Wordless.1234'
  user.admin = true
end

donor = User.find_or_create_by(email: 'greg.silcox+donor@gmail.com') do |user|
  user.password = 'Hardword.7726'
  user.password_confirmation = 'Hardword.7726'
  user.admin = false
end

Group.find_or_create_by name: "microgreens"
Group.find_or_create_by name: "microcnc"

crop = Crop.find_or_create_by(id: 14) do |crop|
  crop.notes = "No sunflowers or peas."
  crop.sown_at = DateTime.parse("2023-11-09")
end

[ ['Radish', 300, 4],
  ['Broccoli', 202, 5],
  ['Kale', 229, 6],
  ['Kale', 190, 7],
  ['Kohlrabi', 163, 8],
  ['Mustard', 189, 9],
  ['Chia', 147, 10],
  ['Beet', 155, 11]
].map do |green|
  g = Green.find_or_create_by name: green[0]

  Tray.find_or_create_by green: g, crop: crop, weight: green[1], tray_number: green[2],
    sown_at: DateTime.parse("2023-11-09"), harvested_at: DateTime.parse("2023-11-20")
end
