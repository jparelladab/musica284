# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'json'
#require 'open-uri'

#composers_url = "https://imslp.org/imslpscripts/API.ISCR.php?account=worklist/disclaimer=accepted/sort=id/type=1/start=0/retformat=json"
#serialized_composers = open(composers_url).read
#composers = JSON.parse(serialized_composers)

#composers = JSON.parse(serialized_composers)

require 'faker'

puts "creating Students"
Student.create(first_name: "Bernat", last_name: "Horowitz", email: "berni@hola.com", password: "password", introduction: Faker::Quote.most_interesting_man_in_the_world)
Student.create(first_name: "Lali", last_name: "Buniatishvili", email: "lali@hola.com", password: "password", introduction: Faker::Quote.most_interesting_man_in_the_world)
Student.create(first_name: "Luireru", last_name: "Trankis", email: "luireu@hola.com", password: "password", introduction: Faker::Quote.most_interesting_man_in_the_world)
Student.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , email: "albert@hola.com", password: "password", introduction: Faker::Quote)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Student.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)

puts "creating Teachers"
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)
Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, introduction: Faker::Quote.most_interesting_man_in_the_world, biography: Faker::Lorem.paragraphs)

puts "creating Admin"
Admin.create(first_name: "Admin", last_name: "Omnis", email: "admin@hola.com", password: "password")


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
Piece.create(name: "????", composer_id: 6, level_id: 3, description: "We don't know more works from this escapated man", rating: 1)
Piece.create(name: "El llac", composer_id: 4, level_id: 4, description: "Bagaria played it in Palau", rating: 1)

puts "creating Follows"
Follow.create(follower_id: 1, followed_user_id: 2)
Conversation.create(sender_id: 1, receiver_id: 2)

Follow.create(follower_id: 1, followed_user_id: 3)
Conversation.create(sender_id: 1, receiver_id: 3)

Follow.create(follower_id: 2, followed_user_id: 1)
Conversation.create(sender_id: 2, receiver_id: 1)

Follow.create(follower_id: 2, followed_user_id: 4)
Conversation.create(sender_id: 2, receiver_id: 4)

Follow.create(follower_id: 3, followed_user_id: 6)
Conversation.create(sender_id: 3, receiver_id: 6)

Follow.create(follower_id: 3, followed_user_id: 5)
Conversation.create(sender_id: 3, receiver_id: 5)

Follow.create(follower_id: 4, followed_user_id: 2)
Conversation.create(sender_id: 4, receiver_id: 2)

Follow.create(follower_id: 4, followed_user_id: 3)
Conversation.create(sender_id: 4, receiver_id: 3)

Follow.create(follower_id: 5, followed_user_id: 1)
Conversation.create(sender_id: 5, receiver_id: 1)

Follow.create(follower_id: 5, followed_user_id: 6)
Conversation.create(sender_id: 5, receiver_id: 6)

Follow.create(follower_id: 6, followed_user_id: 4)
Conversation.create(sender_id: 6, receiver_id: 4)

Follow.create(follower_id: 6, followed_user_id: 5)
Conversation.create(sender_id: 6, receiver_id: 5)

# puts "creating Repertoire"
# Repertoire.create(student_id: 1, piece_id: 1)
# Repertoire.create(student_id: 1, piece_id: 2)
# Repertoire.create(student_id: 2, piece_id: 3)
# Repertoire.create(student_id: 2, piece_id: 4)
# Repertoire.create(student_id: 3, piece_id: 5)
# Repertoire.create(student_id: 3, piece_id: 6)
# Repertoire.create(student_id: 4, piece_id: 7)
# Repertoire.create(student_id: 4, piece_id: 1)
# Repertoire.create(student_id: 5, piece_id: 2)
# Repertoire.create(student_id: 5, piece_id: 3)
# Repertoire.create(student_id: 6, piece_id: 4)

puts "creating Subjects"
Subject.create(name: "Piano I", level_id: 1, description: "This is your first piano course")
Subject.create(name: "Cambra I", level_id: 1, description: "This is your first cambra course")
Subject.create(name: "Impro I", level_id: 1, description: "This is your first impro course")
Subject.create(name: "Auditiva I", level_id: 1, description: "This is your first auditiva course")
Subject.create(name: "Repertori I", level_id: 1, description: "This is your first repertori course")
Subject.create(name: "Anàlisi I", level_id: 1, description: "This is your first anàlisi course")
Subject.create(name: "Harmonia I", level_id: 1, description: "This is your first harmonia course")
Subject.create(name: "Piano II", level_id: 2, description: "This is your second piano course")
Subject.create(name: "Cambra II", level_id: 2, description: "This is your second cambra course")
Subject.create(name: "Impro II", level_id: 2, description: "This is your second impro course")
Subject.create(name: "Auditiva II", level_id: 2, description: "This is your second auditiva course")
Subject.create(name: "Repertori II", level_id: 2, description: "This is your second repertori course")
Subject.create(name: "Anàlisi II", level_id: 2, description: "This is your second anàlisi course")
Subject.create(name: "Harmonia II", level_id: 2, description: "This is your second harmonia course")
Subject.create(name: "Piano III", level_id: 3, description: "This is your third piano course")
Subject.create(name: "Cambra III", level_id: 3, description: "This is your third cambra course")
Subject.create(name: "Impro III", level_id: 3, description: "This is your third impro course")
Subject.create(name: "Auditiva III", level_id: 3, description: "This is your third auditiva course")
Subject.create(name: "Repertori III", level_id: 3, description: "This is your third repertori course")
Subject.create(name: "Anàlisi III", level_id: 3, description: "This is your third anàlisi course")
Subject.create(name: "Harmonia III", level_id: 3, description: "This is your third harmonia course")
Subject.create(name: "Piano IV", level_id: 4, description: "This is your fourth piano course")
Subject.create(name: "Cambra IV", level_id: 4, description: "This is your fourth cambra course")
Subject.create(name: "Impro IV", level_id: 4, description: "This is your fourth impro course")
Subject.create(name: "Auditiva IV", level_id: 4, description: "This is your fourth auditiva course")
Subject.create(name: "Repertori IV", level_id: 4, description: "This is your fourth repertori course")
Subject.create(name: "Anàlisi IV", level_id: 4, description: "This is your fourth anàlisi course")
Subject.create(name: "Harmonia IV", level_id: 4, description: "This is your fourth harmonia course")

puts "creating Videos"
Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 1, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 1, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 1, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 1, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 1, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 1, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 1, description: "Anime Piano Music")

Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 2, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 2, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 2, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 2, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 2, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 2, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 2, description: "Anime Piano Music")

Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 3, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 3, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 3, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 3, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 3, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 3, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 3, description: "Anime Piano Music")

Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 4, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 4, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 4, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 4, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 4, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 4, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 4, description: "Anime Piano Music")

Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 5, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 5, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 5, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 5, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 5, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 5, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 5, description: "Anime Piano Music")

Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 6, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 6, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 6, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 6, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 6, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 6, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 6, description: "Anime Piano Music")

Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user_id: 7, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user_id: 7, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user_id: 7, description: "Very impressionist")
Video.create(title: "Ambient Study Music", url: "https://www.youtube.com/watch?v=4GnVDPD01as", user_id: 7, description: "Easy to conentrate")
Video.create(title: "Beethoven - 5th Symphony", url: "https://www.youtube.com/watch?v=olMPeiqoiic", user_id: 7, description: "My favorite symphony")
Video.create(title: "Mozart - The Magic Flute (Night Queen Aria)", url: "https://www.youtube.com/watch?v=YuBeBjqKSGQ", user_id: 7, description: "Cool Aria")
Video.create(title: "Spirited Away Song", url: "https://www.youtube.com/watch?v=U9RxGijXy4g", user_id: 7, description: "Anime Piano Music")

puts "creating Posts"
Post.create(user_id: 1, text: Faker::Lorem.paragraph)
Post.create(user_id: 1, text: Faker::Lorem.paragraph)
Post.create(user_id: 2, text: "Gotta Catch Them All")
Post.create(user_id: 2, text: "Qui canta els seus mals espanta")
Post.create(user_id: 3, text: Faker::Lorem.paragraph)
Post.create(user_id: 3, text: Faker::Lorem.paragraph)
Post.create(user_id: 4, text: "Hark the herald angels sing")
Post.create(user_id: 4, text: Faker::Lorem.paragraph)
Post.create(user_id: 5, text: Faker::Lorem.paragraph)
Post.create(user_id: 5, text: Faker::Lorem.paragraph)
Post.create(user_id: 6, text: "Frohes Weihnachten")
Post.create(user_id: 6, text: "Und einen guten Rutsch")
Post.create(user_id: 7, text: "Les oiseaux, qui chantent.")
Post.create(user_id: 7, text: "Les feuilles volent sous le vent.")
Post.create(user_id: 1, text: Faker::Lorem.paragraph)
Post.create(user_id: 2, text: Faker::Lorem.paragraph)
Post.create(user_id: 3, text: Faker::Lorem.paragraph)
Post.create(user_id: 4, text: Faker::Lorem.paragraph)
Post.create(user_id: 5, text: Faker::Lorem.paragraph)
Post.create(user_id: 6, text: Faker::Lorem.paragraph)
Post.create(user_id: 7, text: Faker::Lorem.paragraph)

