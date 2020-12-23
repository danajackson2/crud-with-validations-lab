Song.destroy_all
Song.create(title: "My Lady", artist_name: "Jerry", genre: "Punk", release_year: 2019, released: true)
Song.create(title: "Whoopie", artist_name: "Mama Mia", genre: "Romatic", release_year: 2017, released: true)
puts "done"