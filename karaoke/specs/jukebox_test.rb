require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../jukebox.rb')

class JukeboxTest < MiniTest::Test
  def setup
    # @allbox = Jukebox.new("all")
    # @popbox = Jukebox.new("pop")
    # @folkbox = Jukebox.new("folk")
    # @rockbox = Jukebox.new("rock")

  end

  def test_song_list
    cheesebox = Jukebox.new("cheese")
    cheese_list = {
    "Mama-Mia" => {name: "Mama-Mia", artist: "Abba", lyrics: "Mama-Mia, here I go again...", genre: "cheese"}
  }
    assert_equal(cheese_list, cheesebox.song_list)
  end

  def test_change_playlist
    cheesebox = Jukebox.new("cheese")
    rock_list = {
      "For Whom The Bell Tolls" => {name: "For Whom The Bell Tolls", artist: "Metallica", lyrics: "For whom the bell tolls...time marches on", genre: "rock"}
    }
    cheesebox.set_list("rock")
    assert_equal(rock_list, cheesebox.song_list)
  end

  def test_change_playlist
    cheesebox = Jukebox.new("cheese")
    rock_list = {
      "For Whom The Bell Tolls" => {name: "For Whom The Bell Tolls", artist: "Metallica", lyrics: "For whom the bell tolls...time marches on", genre: "rock"}
    }
    cheesebox.set_list("rock")
    assert_equal(rock_list, cheesebox.song_list)
  end
end