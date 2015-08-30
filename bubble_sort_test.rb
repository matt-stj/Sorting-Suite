require 'minitest'
require_relative '../lib/bubble_sort'

class UnicornTest < Minitest::Test
  def test_it_has_a_name
    array = BubbleSort.new([3,2,1])
    assert_equal [3,2,1], array.sort
  end
end
