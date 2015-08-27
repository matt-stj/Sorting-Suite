def sort(array)
  n = array.size                                                                # => 4
  n.times do |x|                                                                # => 4
    position = 0                                                                # => 0, 0, 0, 0
    while position < n -1                                                       # => true, true, true, false, true, true, true, false, true, true, true, false, true, true, true, false
      if array[position] > array[position+1]                                    # => true, true, false, true, false, false, false, false, false, false, false, false
      	array[position], array[position+1] = array[position+1], array[position]  # => [2, 3], [1, 3], [1, 2]
        array                                                                   # => [2, 3, 1, 9], [2, 1, 3, 9], [1, 2, 3, 9]
      end                                                                       # => [2, 3, 1, 9], [2, 1, 3, 9], nil, [1, 2, 3, 9], nil, nil, nil, nil, nil, nil, nil, nil
      position += 1                                                             # => 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3
    end                                                                         # => nil, nil, nil, nil
  end                                                                           # => 4
  array                                                                         # => [1, 2, 3, 9]
end                                                                             # => :sort

sort([3,2,1,9, 0])  # => [1, 2, 3, 9]

# test: empty, one value, negative, strings, floats, 
