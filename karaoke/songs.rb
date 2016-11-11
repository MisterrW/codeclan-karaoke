class Song
  attr_reader :name, :artist
  def initialize(name, artist)
    @name = name
    @artist = artist
  end
end

songs = []

songs[0] = Song.new("Toxic", "Britney Spears")
songs[1] = Song.new("Marianne", "Leonard Cohen")
songs[2] = Song.new("Slave for You", "Britney Spears")

def artist_check(artist, songs)
  songs.each do |song|
    if song.artist == artist
      puts song.name
    end
  end
end

artist_check("Britney Spears", songs)
