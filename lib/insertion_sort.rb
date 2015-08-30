module SortingSuite
  class InsertionSort
    def initialize(array)
      @array = array       # => [3, 2, 1]
    end                    # => :initialize

    def array
      @array   # => [3, 2, 1]
    end        # => :array

    def sort
      sorted_array = []  # => []

      array.each_with_index do |x, i|                 # => [3, 2, 1]
        if i == 0                                     # => true, false, false
          sorted_array.push(x)                        # => [3]
        elsif i == 1 && x > sorted_array.last         # => false, false
          sorted_array.push(x)
        elsif i == 1 && x < sorted_array.first        # => true, false
          sorted_array.unshift(x)                     # => [2, 3]
        elsif x > sorted_array.last                   # => false
              sorted_array.push(x)
            elsif x < sorted_array.first              # => true
              sorted_array.unshift(x)                 # => [1, 2, 3]
            elsif
              sorted_array.each_with_index do |y, j|
                if y > x
                    sorted_array.insert(j, x)
                    break
              end
            end
          end                                         # => [3], [2, 3], [1, 2, 3]
      end                                             # => [3, 2, 1]
      sorted_array                                    # => [1, 2, 3]
    end                                               # => :sort
  end                                                 # => :sort
end                                                   # => :sort

SortingSuite::InsertionSort.new([3, 2, 1]).sort  # => [1, 2, 3]
