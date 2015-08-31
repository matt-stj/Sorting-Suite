module SortingSuite
  class InsertionSort

    def initialize(array = [])
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
        elsif sorted_array.each_with_index do |y, j|
          if y > x
            sorted_array.insert(j, x)
            break
          end
        end
        end
      end
      sorted_array
    end
  end
end
