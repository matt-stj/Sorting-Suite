module SortingSuite
  class BubbleSort

    def initialize(array = [])
      @array = array
    end

    def array
      @array
    end

    def sort
      n = array.size
      n.times do
        position = 0
        while position < n - 1
          if array[position] > array[position + 1]
            array[position], array[position + 1] = array[position + 1], array[position]
            array
          end
          position += 1
          array
        end
      end
      array
    end
  end
end

SortingSuite::BubbleSort.new([3, 2, 1]).sort
SortingSuite::BubbleSort.new([4, 2, 5, 3, 1]).sort
