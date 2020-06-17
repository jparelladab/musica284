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


puts "creating users"
User.create(first_name: "Bernat", last_name: "Horowitz", email: "berni@hola.com", password: "password", address: "carrer mallorca 300 barcelona", introduction: "Trying to understand the dragonflies behaviour")
User.create(first_name: "Lali", last_name: "Buniatishvili", email: "lali@hola.com", password: "password", address: "carrer aribau 100 barcelona", introduction: "Sometimes when I'm alone I look at my phone")
User.create(first_name: "Luireru", last_name: "Reru", email: "luireu@hola.com", password: "password", address: "carrer pau claris 100 barcelona", introduction: "Mountains are high, oceans are deep.")
User.create(first_name: "Yarot", last_name: "Arroyo", email: "yaro@hola.com", password: "password", address: "carrer castillejos 100 barcelona", introduction: "My students are so talentless. Why do gods punish me this way.")
User.create(first_name: "Sergi", last_name: "Wadaixat", email: "sergi@hola.com", password: "password", address: "carrer avila 100 barcelona", introduction: "When Blanca Selva told me about this I didn't believe it.")
User.create(first_name: "Albert", last_name: "Attenello", email: "albert@hola.com", password: "password", address: "carrer aragó 100 barcelona", introduction: "I whish I could play Appassionata like Bernat or Lali.")
User.create(first_name: "Joan", last_name: "Parell", email: "joan.parellada789@gmail.com", password: "password", admin: true)

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
Video.create(title: "Relaxing Piano Jazz", url: "https://www.youtube.com/watch?v=XiuaGPGUiUA", user: User.first, description: "Very relaxing")
Video.create(title: "Prokofiev Tocatta", url: "https://www.youtube.com/watch?v=XYFpfFsbshk", user: User.first, description: "Very percusive")
Video.create(title: "Debussy Images", url: "https://www.youtube.com/watch?v=L47SRue0gt8", user: User.first, description: "Very impressionist")

puts "creating Posts"
Post.create(user_id: 1, text: "A qué huelen las nuves")
Post.create(user_id: 1, text: "Hakuna Matata")
Post.create(user_id: 2, text: "Gotta Catch Them All")
Post.create(user_id: 2, text: "Qui canta els seus mals espanta")
Post.create(user_id: 3, text: "Cantem una canço!")
Post.create(user_id: 3, text: "Cantem-ne 140.")
Post.create(user_id: 4, text: "Hark the herald angels sing")
Post.create(user_id: 4, text: "Què collons Miami ni que Florida Beach")
Post.create(user_id: 5, text: "Albert tienes las llaves del coche?")
Post.create(user_id: 5, text: "Tarragona m'esborrona")
Post.create(user_id: 6, text: "Frohes Weihnachten")
Post.create(user_id: 6, text: "Und einen guten Rutsch")
Post.create(user_id: 7, text: "Les oiseaux, qui chantent.")
Post.create(user_id: 7, text: "Les feuilles volent sous le vent.")
Post.create(user_id: 1, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")
Post.create(user_id: 2, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")
Post.create(user_id: 3, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")
Post.create(user_id: 4, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")
Post.create(user_id: 5, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")
Post.create(user_id: 6, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")
Post.create(user_id: 7, text: "Lorem ipsum dolor sit amet, ex mei ferri fabellas scribentur, qui veritus dolores at. Veri dictas ut cum, omittam qualisque splendide sit et. Ad vix mutat adversarium voluptatibus, duis posse invenire ut pro. Ne nam propriae adolescens contentiones, eu sed nemore legendos, vix id saepe contentiones. Nec ei agam aperiam. Ridens aeterno eum cu.Homero appareat at sed. Nec no impetus aliquid fastidii. Omittam appareat platonem nec no, id usu assentior referrentur. Ei hinc latine senserit quo, duo ad tollit vivendum. Eum at laudem regione salutandi.
Cum ei facilis docendi ponderum, usu everti molestie eu, eius deterruisset cum et. Cu soleat mnesarchum cum, ad his quodsi urbanitas, has ad antiopam suscipiantur. Has id natum perfecto maluisset, placerat facilisi petentium duo et. Pro case omnium alterum ea. No erat minimum pro, ex solet conclusionemque qui, quo dicit epicurei complectitur ex.
Nec te atqui elitr impedit. Facilisi suscipiantur intellegebat an eam, ut qui stet persius philosophia. An suas mutat qui, iisque luptatum per te, eam at laoreet adipisci. No mel ludus labitur definiebas. Te mei noster sapientem, ius an viris iracundia inciderint. Populo vivendo pri eu, falli maiorum antiopam sit at, clita assueverit has ut.
Eu decore sanctus definitionem nam, ")


# puts "creating Messages"
# Message.create(sender_id: 1, receiver_id: 2, text: "Hola que tal whats up.")
# Message.create(sender_id: 1, receiver_id: 3, text: "Hey que tal whats up.")
# Message.create(sender_id: 1, receiver_id: 4, text: "Adios que tal whats up.")
# Message.create(sender_id: 1, receiver_id: 5, text: "Adéu que tal whats up.")
# Message.create(sender_id: 1, receiver_id: 6, text: "Arreveure que tal whats up.")
# Message.create(sender_id: 2, receiver_id: 1, text: "Holi que tal whats up.")
# Message.create(sender_id: 2, receiver_id: 3, text: "Holita que tal whats up.")
# Message.create(sender_id: 2, receiver_id: 4, text: "Uhh que tal whats up.")
# Message.create(sender_id: 2, receiver_id: 5, text: "Aloha que tal whats up.")
# Message.create(sender_id: 2, receiver_id: 6, text: "Holo que tal whats up.")
# Message.create(sender_id: 3, receiver_id: 1, text: "Ciao que tal whats up.")
# Message.create(sender_id: 3, receiver_id: 2, text: "Bnjour que tal whats up.")
# Message.create(sender_id: 3, receiver_id: 4, text: "Rahola que tal whats up.")
# Message.create(sender_id: 3, receiver_id: 5, text: "Cocacola que tal whats up.")
# Message.create(sender_id: 3, receiver_id: 6, text: "Ale que tal whats up.")
# Message.create(sender_id: 3, receiver_id: 2, text: "Wtf que tal whats up.")
# Message.create(sender_id: 4, receiver_id: 1, text: "Rolfmao que tal whats up.")
# Message.create(sender_id: 4, receiver_id: 2, text: "Ahá que tal whats up.")
# Message.create(sender_id: 4, receiver_id: 3, text: "Cagundéu que tal whats up.")
# Message.create(sender_id: 4, receiver_id: 5, text: "Renoi que tal whats up.")
# Message.create(sender_id: 4, receiver_id: 6, text: "Ep que tal whats up.")
# Message.create(sender_id: 5, receiver_id: 1, text: "Iep que tal whats up.")
# Message.create(sender_id: 5, receiver_id: 2, text: "Ei que tal whats up.")
# Message.create(sender_id: 5, receiver_id: 3, text: "Atencio que tal whats up.")
# Message.create(sender_id: 5, receiver_id: 4, text: "Recoi que tal whats up.")
# Message.create(sender_id: 5, receiver_id: 6, text: "Què dius que tal whats up.")
# Message.create(sender_id: 6, receiver_id: 1, text: "Loco que tal whats up.")
# Message.create(sender_id: 6, receiver_id: 2, text: "Uhho que tal whats up.")
# Message.create(sender_id: 6, receiver_id: 3, text: "Aver que tal whats up.")
# Message.create(sender_id: 6, receiver_id: 4, text: "Halo que tal whats up.")
# Message.create(sender_id: 6, receiver_id: 5, text: "Buongiorno que tal whats up.")

# Message.create(sender_id: 1, receiver_id: 2, text: "Hola very well. Farewell.")
# Message.create(sender_id: 1, receiver_id: 3, text: "Hey very well. Farewell.")
# Message.create(sender_id: 1, receiver_id: 4, text: "Adios very well. Farewell.")
# Message.create(sender_id: 1, receiver_id: 5, text: "Adéu very well. Farewell.")
# Message.create(sender_id: 1, receiver_id: 6, text: "Arreveure very well. Farewell.")
# Message.create(sender_id: 2, receiver_id: 1, text: "Holi very well. Farewell.")
# Message.create(sender_id: 2, receiver_id: 3, text: "Holita very well. Farewell.")
# Message.create(sender_id: 2, receiver_id: 4, text: "Uhh very well. Farewell.")
# Message.create(sender_id: 2, receiver_id: 5, text: "Aloha very well. Farewell.")
# Message.create(sender_id: 2, receiver_id: 6, text: "Holo very well. Farewell.")
# Message.create(sender_id: 3, receiver_id: 1, text: "Ciao very well. Farewell.")
# Message.create(sender_id: 3, receiver_id: 2, text: "Bnjour very well. Farewell.")
# Message.create(sender_id: 3, receiver_id: 4, text: "Rahola very well. Farewell.")
# Message.create(sender_id: 3, receiver_id: 5, text: "Cocacola very well. Farewell.")
# Message.create(sender_id: 3, receiver_id: 6, text: "Ale very well. Farewell.")
# Message.create(sender_id: 3, receiver_id: 2, text: "Wtf very well. Farewell.")
# Message.create(sender_id: 4, receiver_id: 1, text: "Rolfmao very well. Farewell.")
# Message.create(sender_id: 4, receiver_id: 2, text: "Ahá very well. Farewell.")
# Message.create(sender_id: 4, receiver_id: 3, text: "Cagundéu very well. Farewell.")
# Message.create(sender_id: 4, receiver_id: 5, text: "Renoi very well. Farewell.")
# Message.create(sender_id: 4, receiver_id: 6, text: "Ep very well. Farewell.")
# Message.create(sender_id: 5, receiver_id: 1, text: "Iep very well. Farewell.")
# Message.create(sender_id: 5, receiver_id: 2, text: "Ei very well. Farewell.")
# Message.create(sender_id: 5, receiver_id: 3, text: "Atencio very well. Farewell.")
# Message.create(sender_id: 5, receiver_id: 4, text: "Recoi very well. Farewell.")
# Message.create(sender_id: 5, receiver_id: 6, text: "Què dius very well. Farewell.")
# Message.create(sender_id: 6, receiver_id: 1, text: "Loco very well. Farewell.")
# Message.create(sender_id: 6, receiver_id: 2, text: "Uhho very well. Farewell.")
# Message.create(sender_id: 6, receiver_id: 3, text: "Aver very well. Farewell.")
# Message.create(sender_id: 6, receiver_id: 4, text: "Halo very well. Farewell.")
# Message.create(sender_id: 6, receiver_id: 5, text: "Buongiorno very well. Farewell.")

# Message.create(sender_id: 1, receiver_id: 2, text: "Hola. Trankil pernil.")
# Message.create(sender_id: 1, receiver_id: 3, text: "Hey. Trankil pernil.")
# Message.create(sender_id: 1, receiver_id: 4, text: "Adios. Trankil pernil.")
# Message.create(sender_id: 1, receiver_id: 5, text: "Adéu. Trankil pernil.")
# Message.create(sender_id: 1, receiver_id: 6, text: "Arreveure. Trankil pernil.")
# Message.create(sender_id: 2, receiver_id: 1, text: "Holi. Trankil pernil.")
# Message.create(sender_id: 2, receiver_id: 3, text: "Holita. Trankil pernil.")
# Message.create(sender_id: 2, receiver_id: 4, text: "Uhh. Trankil pernil.")
# Message.create(sender_id: 2, receiver_id: 5, text: "Aloha. Trankil pernil.")
# Message.create(sender_id: 2, receiver_id: 6, text: "Holo. Trankil pernil.")
# Message.create(sender_id: 3, receiver_id: 1, text: "Ciao. Trankil pernil.")
# Message.create(sender_id: 3, receiver_id: 2, text: "Bnjour. Trankil pernil.")
# Message.create(sender_id: 3, receiver_id: 4, text: "Rahola. Trankil pernil.")
# Message.create(sender_id: 3, receiver_id: 5, text: "Cocacola. Trankil pernil.")
# Message.create(sender_id: 3, receiver_id: 6, text: "Ale. Trankil pernil.")
# Message.create(sender_id: 3, receiver_id: 2, text: "Wtf. Trankil pernil.")
# Message.create(sender_id: 4, receiver_id: 1, text: "Rolfmao. Trankil pernil.")
# Message.create(sender_id: 4, receiver_id: 2, text: "Ahá. Trankil pernil.")
# Message.create(sender_id: 4, receiver_id: 3, text: "Cagundéu. Trankil pernil.")
# Message.create(sender_id: 4, receiver_id: 5, text: "Renoi. Trankil pernil.")
# Message.create(sender_id: 4, receiver_id: 6, text: "Ep. Trankil pernil.")
# Message.create(sender_id: 5, receiver_id: 1, text: "Iep. Trankil pernil.")
# Message.create(sender_id: 5, receiver_id: 2, text: "Ei. Trankil pernil.")
# Message.create(sender_id: 5, receiver_id: 3, text: "Atencio. Trankil pernil.")
# Message.create(sender_id: 5, receiver_id: 4, text: "Recoi. Trankil pernil.")
# Message.create(sender_id: 5, receiver_id: 6, text: "Què dius. Trankil pernil.")
# Message.create(sender_id: 6, receiver_id: 1, text: "Loco. Trankil pernil.")
# Message.create(sender_id: 6, receiver_id: 2, text: "Uhho. Trankil pernil.")
# Message.create(sender_id: 6, receiver_id: 3, text: "Aver. Trankil pernil.")
# Message.create(sender_id: 6, receiver_id: 4, text: "Halo. Trankil pernil.")
# Message.create(sender_id: 6, receiver_id: 5, text: "Buongiorno. Trankil pernil.")
