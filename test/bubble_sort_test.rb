require 'minitest'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_has_a_value
    array = BubbleSort.new("hi")
    assert_equal "hi", BubbleSort.
  end
end




  # test: empty, one value, negative, strings, floats
