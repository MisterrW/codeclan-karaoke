class Venue
  attr_accessor :occupants, :earnings, :rooms
  def initialize
    @occupants = []
    @rooms = []
    @earnings = 0
  end

end