require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'


class RoomTest < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, room
  end

  def test_it_has_attributes
    room = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, room.catagory
    assert_equal 10, room.length
    assert_equal 13, room.width
  end

  def test_it_can_calc_area
    room = Room.new(:bedroom, 10, 13)

    assert_equal 130, room.area
  end

end
