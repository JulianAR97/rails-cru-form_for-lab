# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(
  [
    {name: 'Pink Floyd', bio: "A psychedelic rock band from England. Popular during the 70's"},
    {name: 'Mild Orange', bio: 'An indie rock band from New Zealand'},
    {name: 'Peach Pit', bio: 'An indie rock band from Vancouver, CA'}
  ]
)

Genre.create(
  [
    {name: 'Indie'},
    {name: 'Rock'}
  ]
)

Song.create(
  [
    {name: "Wish You Were Here", artist_id: 1, genre_id: 2},
    {name: 'Some Feeling', artist_id: 2, genre_id: 1},
    {name: 'Vera', artist_id: 1, genre_id: 2},
    {name: 'Peach Pit', artist_id: 3, genre_id: 1}
  ]
)
