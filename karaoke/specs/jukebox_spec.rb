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
    cheese_list = [
      {name: "Mama-Mia", artist: "Abba", lyrics: "Mama-Mia, here I go again...", genre: "cheese"},
      {name: "My Heart Will Go On", artist: "Celine Dion", lyrics: "Every night in my dreams, I see you, I feel you...", genre: "cheese"},
    ]
    assert_equal(cheese_list, cheesebox.song_list)
  end

  def test_change_playlist
    cheesebox2 = Jukebox.new("cheese")
    rock_list = [
      {name: "For Whom The Bell Tolls", artist: "Metallica", lyrics: "For whom the bell tolls...time marches on", genre: "rock"},
      {name: "My Own Summer", artist: "Deftones", lyrics: "There' no crowds in the streets...and no sun", genre: "rock"},
      {name: "Pardon Me", artist: "Incubus", lyrics: "Pardon me while I burst into flames, pardon me, pardon me...", genre: "rock"}
    ]
    cheesebox2.set_list("rock")
    assert_equal(rock_list, cheesebox2.song_list)
  end

  def test_choose_song
    #Choose p and then 1 for test to pass
    cheesebox3 = Jukebox.new("cheese")
    cheesebox3.choose_genre()
    playing = cheesebox3.now_playing()
    assert_equal("Now playing: Toxic by Britney Spears", playing)
  end
end