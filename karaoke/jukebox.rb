require_relative('song')

class Jukebox
  attr_reader :song_list
  def initialize(genre)
    @pop = {
      "Toxic" => {name: "Toxic", artist: "Britney Spears", lyrics: "...but you know that you're toxic", genre: "pop"},
      "Slave for you" => {name: "Slave for You", artist: "Britney Spears", lyrics: "I'm a slave for you", genre: "pop"}
    }
    
    @folk = {
      "Marianne" => {name: "Marianne", artist: "Leonard Cohen", lyrics: "So long, Marianne...", genre: "folk"}
    }

    @cheese = {
      "Mama-Mia" => {name: "Mama-Mia", artist: "Abba", lyrics: "Mama-Mia, here I go again...", genre: "cheese"}
    }

    @rock = {
      "For Whom The Bell Tolls" => {name: "For Whom The Bell Tolls", artist: "Metallica", lyrics: "For whom the bell tolls...time marches on", genre: "rock"}
    }

    set_list(genre)
  end



  def set_list(genre)
    case genre 
    when "all"
      @song_list = @pop + @folk + @cheese + @rock
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

end