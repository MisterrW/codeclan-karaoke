class Song
  attr_reader :name, :artist, :lyrics
  def initialize(name, artist, lyrics)
    @name = name
    @artist = artist
    @lyrics = lyrics
  end
end

songs = []



def artist_check(artist, songs)
  songs.each do |song|
    if song.artist == artist
      puts song.name
    end
  end
end

artist_check("Britney Spears", songs)
