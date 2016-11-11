require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test
  def setup
    @song1 = Song.new({name: "Toxic", artist: "Britney Spears", lyrics: "...but you know that you're toxic", genre: "pop"})
    @song2 = Song.new({name: "Marianne", artist: "Leonard Cohen", lyrics: "So long, Marianne...", genre: "folk"})
    @song3 = Song.new({name: "Slave for You", artist: "Britney Spears", lyrics: "I'm a slave for you", genre: "pop"})
  end

  def test_song_name
    assert_equal("Marianne", @song2.name)
  end

  def test_song_artist
    assert_equal("Britney Spears", @song3.artist)
  end

  def test_song_lyrics
    assert_equal("...but you know that you're toxic", @song1.lyrics)
  end

  def test_song_genre
    assert_equal("pop", @song1.genre)
  end

end