class Person
  attr_accessor :current_room
  def initialize(song)
    @favorite_song = song
    @money = 100
    @current_room = venue
  end

  def pay(amount)
    @money -= amount
  end

  def enter_room(room)
    room.admit_one(self)
    puts "#{self} has entered the #{room} room."
    if room.jukebox.now_playing == favorite_song
      puts "Whooop!"
    end
  end

  def leave_room
    puts "#{self} has left the #{@current_room} room."
    room.exit_one(self)

  def sing
    puts "#{self} grabs the mic and sings #{current_room.jukebox.now_playing[:name]} by #{current_room.jukebox.now_playing[:artist]}."
    puts "They're not very good..."
  end

end
