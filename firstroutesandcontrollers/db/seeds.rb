# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: 'Arnob') #5
User.create(username: 'Justin') #6
User.create(username: 'Ethan') #7

Artwork.create(title: 'dookey1', image_url: 'dookey1', artist_id: 5)
Artwork.create(title: 'dookey2', image_url: 'dookey2', artist_id: 5)
Artwork.create(title: 'dookey3', image_url: 'dookey3', artist_id: 5)



