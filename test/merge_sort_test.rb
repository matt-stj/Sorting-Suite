require 'minitest'
require_relative '../lib/merge_sort'

module SortingSuite
  class MergeSortTest < Minitest::Test

    def test_it_works_with_first_set_of_given_values
      array = BubbleSort.new([3,2,1])
      assert_equal [1,2,3], array.sort
    end

    def test_it_with_second_set_of_given_values
      array = BubbleSort.new([5,3,1,2,4])
      assert_equal [1,2,3,4,5], array.sort
    end

  end
end
