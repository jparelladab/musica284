# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating seeds"
test_user_one = User.new(first_name: "Johannes", last_name: "Brahms", email: "johnny@hola.com", password: "password")
test_user_one.save!
test_user_two = User.new(first_name: "Antonio", last_name: "Vivaldi", email: "anto@hola.com", password: "password")
test_user_two.save!
test_user_three = User.new(first_name: "Claude", last_name: "Debussy", email: "claudi@hola.com", password: "password")
test_user_three.save!
test_user_one = User.new(first_name: "Alfred", last_name: "Cortot", email: "alfred@hola.com", password: "password")
test_user_one.save!
test_user_two = User.new(first_name: "Enrique", last_name: "Bagaria", email: "baga@hola.com", password: "password")
test_user_two.save!
test_user_three = User.new(first_name: "Albert", last_name: "Attenello", email: "albert@hola.com", password: "password")
test_user_three.save!
