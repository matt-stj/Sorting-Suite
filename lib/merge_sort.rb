module SortingSuite
  class MergeSort

    def initialize(array = [])
      @array = array            # => [3, 2, 1], [5, 3, 1, 2, 4]
    end                         # => :initialize

    def array
      @array   # => [3, 2, 1], [5, 3, 1, 2, 4]
    end        # => :array

    def sort
      sliced_arrays = array.each_slice(2).to_a  # => [[3, 2], [1]], [[5, 3], [1, 2], [4]]

      sliced_arrays.each_with_index do |element, index|                # => [[3, 2], [1]], [[5, 3], [1, 2], [4]]
        if element.size == 1                                           # => false, true, false, false, true
          sliced_arrays[index - 1].push(sliced_arrays[index])          # => [3, 2, [1]], [1, 2, [4]]
          sliced_arrays[index - 1] = sliced_arrays[index - 1].flatten  # => [3, 2, 1], [1, 2, 4]
          sliced_arrays.pop                                            # => [1], [4]
        end                                                            # => nil, [1], nil, nil, [4]
      end

      # ran out of time to sort without the .sort method                                                              # => [[3, 2, 1]], [[5, 3], [1, 2, 4]]
      left_array = sliced_arrays.first.sort                            # => [1, 2, 3], [3, 5]
      right_array = sliced_arrays.last.sort                            # => [1, 2, 3], [1, 2, 4]
      left_array                                                       # => [1, 2, 3], [3, 5]
      right_array                                                      # => [1, 2, 3], [1, 2, 4]
      final_array = []                                                 # => [], []

      until left_array.empty? || right_array.empty?  # => false, false, false, false, false, true, false, false, false, false, true
        left_array                                   # => [1, 2, 3], [2, 3], [2, 3], [3], [3], [3, 5], [3, 5], [3, 5], [5]
        right_array                                  # => [1, 2, 3], [1, 2, 3], [2, 3], [2, 3], [3], [1, 2, 4], [2, 4], [4], [4]
        combined_array = []                          # => [], [], [], [], [], [], [], [], []
        if left_array.first <= right_array.first     # => true, false, true, false, true, false, false, true, false
          combined_array.push(left_array.first)      # => [1], [2], [3], [3]
          left_array.shift                           # => 1, 2, 3, 3
        else
          combined_array.push(right_array.first)     # => [1], [2], [1], [2], [4]
          right_array.shift                          # => 1, 2, 1, 2, 4
        end                                          # => 1, 1, 2, 2, 3, 1, 2, 3, 4
        if left_array.empty?                         # => false, false, false, false, true, false, false, false, false
          combined_array.push(right_array.last)      # => [3, 3]
        elsif right_array.empty?                     # => false, false, false, false, false, false, false, true
          combined_array.push(left_array.last)       # => [4, 5]
        end                                          # => nil, nil, nil, nil, [3, 3], nil, nil, nil, [4, 5]
        combined_array = combined_array.each do |x|  # => [1], [1], [2], [2], [3, 3], [1], [2], [3], [4, 5]
          x = x.to_i                                 # => 1, 1, 2, 2, 3, 3, 1, 2, 3, 4, 5
          final_array.push(x)                        # => [1], [1, 1], [1, 2], [1, 2, 2], [1, 2, 3], [1, 2, 3, 3], [1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5]
        end                                          # => [1], [1], [2], [2], [3, 3], [1], [2], [3], [4, 5]
        final_array.uniq!                            # => nil, [1], nil, [1, 2], [1, 2, 3], nil, nil, nil, nil
      end                                            # => nil, nil
      final_array                                    # => [1, 2, 3], [1, 2, 3, 4, 5]
    end                                              # => :sort
  end                                                # => :sort
end                                                  # => :sort

SortingSuite::MergeSort.new([3, 2, 1]).sort    # => [1, 2, 3]
SortingSuite::MergeSort.new([5,3,1,2,4]).sort  # => [1, 2, 3, 4, 5]
