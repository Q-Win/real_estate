
class House

  attr_reader  :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price[1..-1].to_i
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(catagory)
    @rooms.select do |room|
      room.catagory == catagory
    end
  end

  def area
    sum = 0
    @rooms.each do |room|
      sum += room.area
    end
    sum
  end

  def price_per_square_foot
    (@price[1..-1].to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end



end
