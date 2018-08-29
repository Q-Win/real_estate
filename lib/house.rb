
class House

  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(room)
    @rooms.select do |room|
      room.catagory
      binding.pry
    end
  end

end
