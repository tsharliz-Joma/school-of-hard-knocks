# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



User.destroy_all 

u1 = User.create :name => "Julio Cesar Chavez", :image => "https://www.ringtv.com/wp-content/uploads/2012/02/file_171349_1_Julio_Cesar_Chavez.jpg", :email => "lightweight@ga.com", :password => "chicken", :favourite => "Big F"
u2 = User.create :name => "Pernell Whitaker", :image => "https://www.sportsnet.ca/wp-content/uploads/2019/07/Pernell-Whitaker-leans-away-from-Oscar-De-La-Hoya-punch.jpg", :email => "sweetpea@ga.com" ,:password => "chicken", :favourite =>  "Zab Judah"
u3 = User.create :name => "James Toney", :image => "https://media.gettyimages.com/photos/james-toney-gets-ready-in-the-ring-against-mike-mccallum-during-the-picture-id178191958?s=612x612", :email => "lightsout@ga.com", :password => "chicken", :favourite => "Gregory Owens"
u4 = User.create :name => "Roy Jones Jr", :image => "https://www.gannett-cdn.com/-mm-/2acf57b34d27657e143fdc5cdcc52016b303f52b/c=0-29-2132-1233/local/-/media/2018/02/06/Pensacola/Pensacola/636535355205467767-JONES2.jpg", :email => "cantbetouched@ga.com", :password => "chicken", :favourite =>  "Roy Jones Sr."
u5 = User.create :name => "Prince Naseem Hamed", :image => "https://www.ringtv.com/wp-content/uploads/2015/06/Hamed-Vazquez-Photo-by-John-Gichigi-Allsport.jpg", :email => "prince@ga.com" , :password => "chicken", :favourite =>  "Brendan Ingle"
u6 = User.create :name => "Devn Haney", :image => "https://s3.us-west-1.amazonaws.com/boxeomundial.com/wp-content/uploads/2019/01/12115920/Devin-Haney.jpg" , :email => "thedream@ga.com" , :password => "chicken", :favourite =>  "Yoel Judah"

puts "#{ User.count } users Created "

Trainer.destroy_all 

t1 = Trainer.create :name => "Action Jackson", :image => "https://ultimateactionmovies.com/wp-content/uploads/2019/04/ACTION-JACKSON.jpg", :speciality => "Jabs", :email => "jacko@ga.com"
t2 = Trainer.create :name => "The Rapter Raymond", :image => "https://pbs.twimg.com/media/DbAZrQ7W0AALS03.jpg" , :speciality => "Slippery manuvers", :email => "jacko1@ga.com"
t3 = Trainer.create :name => "LazerBeem Larry", :image => "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f49ff25e-0aa3-4ea3-846d-1ba121afbb32/dckseyx-bd9ee11e-8116-4766-b2c7-6f590e2748a0.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Y0OWZmMjVlLTBhYTMtNGVhMy04NDZkLTFiYTEyMWFmYmIzMlwvZGNrc2V5eC1iZDllZTExZS04MTE2LTQ3NjYtYjJjNy02ZjU5MGUyNzQ4YTAucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.hVSIiw5JZ-1rsp7ef4qEn-SbsU880eb9LZI2H6nRkQw" , :speciality => "Math Abs", :email => "jacko2@gamil.com"
t4 = Trainer.create :name => "Chubby chuck" , :image => "https://pbs.twimg.com/media/C8WsR_kUwAAhdLw.jpg" , :speciality => "Chips and dips", :email => "jacko3@ga.com"
t5 = Trainer.create :name => "Rolled up Robert", :image => "https://i.kym-cdn.com/photos/images/newsfeed/001/124/447/054.jpg", :speciality => "Spaced out Hooks", :email => "jacko4@gmail.com"
t6 = Trainer.create :name => "Meat head Memphis", :image => "https://www.thefamouspeople.com/profiles/images/katt-williams-4.jpg", :speciality => "Moves likes Jagger", :email => "jacko6@ga.com"


puts "#{ Trainer.count } Trainers Created"

Booking.destroy_all

b1 = Booking.create :datetime => "2022-07-29" , :location => "Wonthaggi"
b2 = Booking.create :datetime => "2022-08-12" , :location => "Wonthaggi" 
b3 = Booking.create :datetime => "2022-09-05" , :location => "Leongtha"
b4 = Booking.create :datetime => "2022-12-15" , :location => "Leongtha"
b5 = Booking.create :datetime => "2022-01-16" , :location => "Warragul"
b6 = Booking.create :datetime => "2022-07-30" , :location => "Warragul"

puts "#{ Booking.count } Bookings created "
# ASSOCIATIONS #################

# trainers has_many bookings
puts "Trainers and Bookings"
t1.bookings << b1 
t2.bookings << b2 
t3.bookings << b3
t4.bookings << b1 
t5.bookings << b2
t6.bookings << b3




















