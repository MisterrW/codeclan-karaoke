class Room
  def initialize
    @max_people = 10
    @entry_fee = 5
    @occupants = []
  end

  def admit_one(person)
    if venue.occupants.include?(person)
      if occupants.length < max_people
        venue.occupants.pop(person)
        @occupants << person
        person.current_room = self
        person.pay(@entry fee)
        venue.earnings += @entry_fee
      else
        puts "Sorry, the room is full."
    else
      puts "Leave current room first!"
    end
  end

  def exit_one(person)
    @occupants.include?(person)
    @occupants.pop(person)
    venue.occupants << person
    person.current_room = venue
  end

end