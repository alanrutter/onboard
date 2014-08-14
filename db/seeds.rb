# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

House.create([{
	title: "Alan's house", 
	address: "31 Effingham Road, London N8 0AA",
	latitude: 51.584539,
	longitude: -0.104937,
	price_in_pence: 6000,
	number_of_rooms: 1,
	max_guests: 2,
	is_featured: true,
	user_id: 1	
}])