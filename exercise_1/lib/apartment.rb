class Apartment
  attr_reader :rented, :rooms
  def initialize
    @rented = false
    @rooms = []
  end

  def rent
    @rented = true
  end

  def add_room(room_object)
    @rooms << room_object
  end

  def list_rooms_by_name_alphabetically
    @rooms.sort { |room_a, room_b| room_a.name <=> room_b.name }
  end
end