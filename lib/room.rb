
class Room

  attr_reader :catagory, :length, :width

  def initialize(catagory, length, width)
    @catagory = catagory
    @length = length
    @width = width
  end

  def area
    @width * @length
  end

end
