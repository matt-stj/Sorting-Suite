module SortingSuite
  class MergeSort

    def initialize(array = [])
      @array = array
    end

    def array
      @array
    end

    def sort
      sliced_arrays = array.each_slice(2).to_a

      sliced_arrays.each_with_index do |element, index|
        if element.size == 1
          sliced_arrays[index - 1].push(sliced_arrays[index])
          sliced_arrays[index - 1] = sliced_arrays[index - 1].flatten
          sliced_arrays.pop
        end
      end

      # ran out of time to sort without the .sort method                                                              # => [[3, 2, 1]], [[5, 3], [1, 2, 4]]
      left_array = sliced_arrays.first.sort
      right_array = sliced_arrays.last.sort
      left_array
      right_array
      final_array = []

      until left_array.empty? || right_array.empty?
        left_array
        right_array
        combined_array = []
        if left_array.first <= right_array.first
          combined_array.push(left_array.first)
          left_array.shift
        else
          combined_array.push(right_array.first)
          right_array.shift
        end
        if left_array.empty?
          combined_array.push(right_array.last)
        elsif right_array.empty?
          combined_array.push(left_array.last)
        end
        combined_array = combined_array.each do |x|
          x = x.to_i
          final_array.push(x)
        end
        final_array.uniq!
      end
      final_array
    end
  end
end

SortingSuite::MergeSort.new([3, 2, 1]).sort
SortingSuite::MergeSort.new([5,3,1,2,4]).sort
