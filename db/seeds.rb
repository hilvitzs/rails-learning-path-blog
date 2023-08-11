# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This first_or_initialize will allow it to run without errors every time.
# If the user doesn't exist then it will create it
# IF the user does exist then it will skip the first line and update it with the 
# correct attributes
puts "What do you want your login email to be?"
email = gets.chomp
user = User.where(email: email).first_or_initialize
puts "What do you want your password to be?"
password = gets.chomp
puts "Please confirm your password"
password_confirmation = gets.chomp
user.update!( # bang makes this return an error rather than false
  password: password,
  password_confirmation: password_confirmation
)