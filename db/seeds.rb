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
