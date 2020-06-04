# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "creating users"
test_user_one = User.create(first_name: "Johannes", last_name: "Brahms", email: "johnny@hola.com", password: "password", address: "carrer mallorca 300 barcelona", introduction: "Trying to understand the dragonflies behaviour")
test_user_two = User.create(first_name: "Antonio", last_name: "Vivaldi", email: "anto@hola.com", password: "password", address: "carrer aribau 100 barcelona", introduction: "Sometimes when I'm alone I look at my phone")
test_user_three = User.create(first_name: "Claude", last_name: "Debussy", email: "claudi@hola.com", password: "password", address: "carrer pau claris 100 barcelona", introduction: "Mountains are high, oceans are deep. You know...")
test_user_one = User.create(first_name: "Alfred", last_name: "Cortot", email: "alfred@hola.com", password: "password", address: "carrer castillejos 100 barcelona", introduction: "My students are so talentless. Why do gods punish me this way.")
test_user_two = User.create(first_name: "Enrique", last_name: "Bagaria", email: "baga@hola.com", password: "password", address: "carrer avila 100 barcelona", introduction: "When Blanca Selva told me about this I didn't believe it.")
test_user_three = User.create(first_name: "Albert", last_name: "Attenello", email: "albert@hola.com", password: "password", address: "carrer aragó 100 barcelona", introduction: "I whish I could play Appassionata like Bernat or Lali.")

puts "creating Composers"
Composer.create(name: "J.S.Bach", biography: "He was a wise man.", rating: 5)
Composer.create(name: "Maurice Ravel", biography: "He was a cool man.", rating: 4)
Composer.create(name: "Claude Debussy", biography: "He was a creative man.", rating: 3)
Composer.create(name: "Frederic Mompou", biography: "He was a special man.", rating: 5)
Composer.create(name: "Franz Schubert", biography: "He was a sensitive man.", rating: 5)
Composer.create(name: "Berlioz", biography: "He was an escapated man.", rating: 1)
Composer.create(name: "César Frank", biography: "He was a harmonious man.", rating: 5)

puts "creating Levels"
Level.create(name: "Iniciació I", description: "It's the first year", number: 1)
Level.create(name: "Iniciació II", description: "It's the second year", number: 2)
Level.create(name: "Preparatori", description: "It's the third year", number: 3)
Level.create(name: "Elemental A", description: "It's the fourth year", number: 4)
Level.create(name: "Elemental B", description: "It's the fifth year", number: 5)
Level.create(name: "Elemental C", description: "It's the sixth year", number: 6)
Level.create(name: "Elemental D", description: "It's the seventh year", number: 7)

puts "creating Pieces"
Piece.create(name: "Partita 1", composer_id: 1, level_id: 1, description: "Amanda tried it and failed", rating: 1)
Piece.create(name: "French Suite No.2", composer_id: 1, level_id: 2, description: "I don't remeber which one it is", rating: 2)
Piece.create(name: "Drei Klavierstücke", composer_id: 5, level_id: 2, description: "It's romantic", rating: 4)
Piece.create(name: "Gaspar de la Nuit", composer_id: 2, level_id: 7, description: "It's guaion", rating: 1)
Piece.create(name: "Rêverie", composer_id: 3, level_id: 2, description: "It makes you dream", rating: 5)
Piece.create(name: "Violin Sonata", composer_id: 7, level_id: 1, description: "It's total", rating: 5)
Piece.create(name: "Fantastic Symphony", composer_id: 6, level_id: 3, description: "It's totally escapated", rating: 1)
Piece.create(name: "Llagrimes", composer_id: 4, level_id: 4, description: "It never existed", rating: 1)
Piece.create(name: "Partita 2", composer_id: 1, level_id: 1, description: "Lovely", rating: 1)
Piece.create(name: "French Suite No.3", composer_id: 1, level_id: 2, description: "I don't remeber which one it is", rating: 2)
Piece.create(name: "Impromptus", composer_id: 5, level_id: 2, description: "It's tipical and yet beatiful", rating: 4)
Piece.create(name: "Miroirs", composer_id: 2, level_id: 7, description: "It's random", rating: 1)
Piece.create(name: "La plus que lente", composer_id: 3, level_id: 2, description: "Debussy's most romantic style", rating: 5)
Piece.create(name: "Prélude Chorale and Fugue", composer_id: 7, level_id: 1, description: "It's interesting", rating: 5)
Piece.create(name: "????", composer_id: 7, level_id: 3, description: "We don't know more works from this escapated man", rating: 1)
Piece.create(name: "El llac", composer_id: 4, level_id: 4, description: "Bagaria played it in Palau", rating: 1)

puts "creating Follows"
Follow.create(follower_id: 1, followed_user_id: 2)
Follow.create(follower_id: 1, followed_user_id: 3)
Follow.create(follower_id: 2, followed_user_id: 1)
Follow.create(follower_id: 2, followed_user_id: 4)
Follow.create(follower_id: 3, followed_user_id: 6)
Follow.create(follower_id: 3, followed_user_id: 5)
Follow.create(follower_id: 4, followed_user_id: 2)
Follow.create(follower_id: 4, followed_user_id: 3)
Follow.create(follower_id: 5, followed_user_id: 1)
Follow.create(follower_id: 5, followed_user_id: 6)
Follow.create(follower_id: 6, followed_user_id: 4)
Follow.create(follower_id: 6, followed_user_id: 5)

puts "creating Repertoire"
Repertoire.create(user_id: 1, piece_id: 1)
Repertoire.create(user_id: 1, piece_id: 2)
Repertoire.create(user_id: 2, piece_id: 3)
Repertoire.create(user_id: 2, piece_id: 4)
Repertoire.create(user_id: 3, piece_id: 5)
Repertoire.create(user_id: 3, piece_id: 6)
Repertoire.create(user_id: 4, piece_id: 7)
Repertoire.create(user_id: 4, piece_id: 1)
Repertoire.create(user_id: 5, piece_id: 2)
Repertoire.create(user_id: 5, piece_id: 3)
Repertoire.create(user_id: 6, piece_id: 4)

puts "creating Subjects"
Subject.create(name: "Piano I", level_id: 1, description: "This is your first piano course")
Subject.create(name: "Piano II", level_id: 2, description: "This is your second piano course")
Subject.create(name: "Piano III", level_id: 3, description: "This is your third piano course")
Subject.create(name: "Piano IV", level_id: 4, description: "This is your fourth piano course")
Subject.create(name: "Impro I", level_id: 2, description: "This is your first Impro course")
Subject.create(name: "Impro II", level_id: 3, description: "This is your second Impro course")
Subject.create(name: "Impro III", level_id: 4, description: "This is your third Impro course")
Subject.create(name: "Impro IV", level_id: 5, description: "This is your fourth Impro course")
Subject.create(name: "Llenguatge I", level_id: 2, description: "This is your first Llenguatge course")
Subject.create(name: "Llenguatge II", level_id: 3, description: "This is your second Llenguatge course")
Subject.create(name: "Llenguatge III", level_id: 4, description: "This is your third Llenguatge course")
Subject.create(name: "Cambra I", level_id: 3, description: "This is your first Cambra course")
Subject.create(name: "Cambra II", level_id: 4, description: "This is your second Cambra course")
Subject.create(name: "Cambra III", level_id: 5, description: "This is your third Cambra course")
