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
user = User.where(email: ENV["EMAIL_ADDRESS"]).first_or_initialize
user.update!( # bang makes this return an error rather than false
  password: ENV["PASSWORD"],
  password_confirmation: ENV["PASSWORD_CONFIRMATION"]
)

# 100.times do |i|
#   blog_post = BlogPost.where(title: "Blog Post #{i}").first_or_initialize
#   blog_post.update(content: "Hello world", published_at: Time.current)
# end
