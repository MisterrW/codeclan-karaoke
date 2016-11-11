class Song
  attr_reader :name, :artist, :lyrics, :genre
  def initialize(properties)
    @name = properties[:name]
    @artist = properties[:artist]
    @lyrics = properties[:lyrics]
    @genre = properties[:genre]
  end
end
