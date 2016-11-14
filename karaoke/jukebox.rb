
require('pry-byebug')

class Jukebox
  attr_reader :song_list
  def initialize(genre)
    @pop = [
      {name: "Toxic", artist: "Britney Spears", lyrics: "...but you know that you're toxic", genre: "pop"},
      {name: "Slave for You", artist: "Britney Spears", lyrics: "I'm a slave for you", genre: "pop"}
    ]
    
    @folk = [
      {name: "Marianne", artist: "Leonard Cohen", lyrics: "So long, Marianne...", genre: "folk"}
    ]

    @cheese = [
      {name: "Mama-Mia", artist: "Abba", lyrics: "Mama-Mia, here I go again...", genre: "cheese"},
      {name: "My Heart Will Go On", artist: "Celine Dion", lyrics: "Every night in my dreams, I see you, I feel you...", genre: "cheese"},
    ]

    @rock = [
      {name: "For Whom The Bell Tolls", artist: "Metallica", lyrics: "For whom the bell tolls...time marches on", genre: "rock"}
    ]

    @all = @pop + @folk + @cheese + @rock

    set_list(genre)
    shuffle_play()
  end


  def set_list(genre)
    case genre 
    when "all"
      @song_list = @all
    when "pop"
      @song_list = @pop
    when "folk"
      @song_list = @folk
    when "cheese"
      @song_list = @cheese
    when "rock"
      @song_list = @rock
    end
  end

  def shuffle_play
    @now_playing = @song_list.sample
    puts now_playing()
  end

  def choose_genre()
    puts "Genres available: pop, folk, cheese, rock."
    puts "Type the first letter of a genre to pick a song in the list!"
    input = gets.chomp
    case input
    when "p"
      genre = @pop
    when "f"
      genre = @folk
    when "c"
      genre = @cheese
    when "r"
      genre = @rock
    else
      puts "Huh?"
      choose_genre()
    end
    list_songs(genre)
  end

  def list_songs(genre)
    song_menu = []
    song_number = 1
    genre.each do |song|
      song_menu << "#{song_number}: #{song[:name]} by #{song[:artist]}"
      song_number += 1
    end
    choose_song(song_menu, genre)
  end

  def choose_song(song_menu, genre)
    puts song_menu
    puts "Type the number of your chosen song."
    pick = gets.chomp.to_i
    song_choice = genre[pick-1]
    if song_choice == nil
      puts "Song not found, sorry."
    else
      # puts "#{song_choice[:name]} coming right up!"
      @now_playing = song_choice
      puts "#{song_choice[:name]} coming right up!"
      # return "Song not found, sorry."
    end
  end


  def now_playing()
    return "Now playing: " + @now_playing[:name] + " by " + @now_playing[:artist]
  end

end

rockbox = Jukebox.new("rock")

rockbox.choose_genre()




