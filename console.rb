require('pg')
require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  "artist_name" => "Dolly Parton"
  })
artist2 = Artist.new({
  "artist_name" => "Elbow"
  })
artist3 = Artist.new({
  "artist_name" => "Justie"
  })

artist1.save()
artist2.save()
artist3.save()

album1 = Album.new({
  "title" => "9 to 5",
  "genre" => "Country",
  'artist_id' => artist1.id
  })

album2 = Album.new({
  "title" => "Asleep in the Back",
  "genre" => "Alternative",
  'artist_id' => artist2.id
  })

album3 = Album.new({
  "title" => "Cross",
  "genre" => "EPIC",
  'artist_id' => artist3.id
  })

album1.save()
album2.save()
album3.save()

albums = Album.all()

artists = Artist.all()



binding.pry
nil
