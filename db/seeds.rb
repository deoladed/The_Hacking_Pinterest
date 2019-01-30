# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
	User.create(name: Faker::StrangerThings.character)
end

20.times do
	Pin.create(url: Faker::Internet.url('thehackingproject.com'), user: User.find(rand(1..9)))
end

40.times do
	Comment.create(body: Faker::Hacker.say_something_smart, user: User.find(rand(1..9)), pin: Pin.find(rand(1..19)))
end