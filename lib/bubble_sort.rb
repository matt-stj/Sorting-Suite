module SortingSuite
  class BubbleSort
    def initialize(array)
      @array = array
    end

    def array
      @array
    end

    def sort
          n = array.size
          n.times do |x|
            position = 0
            while position < n -1
              if array[position] > array[position+1]
              	array[position], array[position+1] = array[position+1], array[position]
                array
              end
              position += 1
            end
          end
          array
        end
  end
end

SortingSuite::BubbleSort.new([3, 2, 1]).sort
SortingSuite::BubbleSort.new([4,2,5,3,1]).sort

module SortingSuite
  class InsertionSort
    def initialize(array)
      @array = array
    end

    def array
      @array
    end

    def sort
      sorted_array = []

      array.each_with_index do |x, i|
        if i == 0
          sorted_array.push(x)
        elsif i == 1 && x > sorted_array.last
          sorted_array.push(x)
        elsif i == 1 && x < sorted_array.first
          sorted_array.unshift(x)
        elsif x > sorted_array.last
              sorted_array.push(x)
            elsif x < sorted_array.first
              sorted_array.unshift(x)
            elsif
              sorted_array.each_with_index do |y, j|
                if y > x
                    sorted_array.insert(j, x)
                    break
              end
              sorted_array
            end
          end
      end
    end
  end
end


SortingSuite::InsertionSort.new([3, 2, 1]).sort
