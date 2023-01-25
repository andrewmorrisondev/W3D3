def range_i(start_n, end_n)
  return [] if end_n < start_n
  arr = []
  while start_n < end_n
    arr << start_n
    start_n += 1
  end
  arr
end

# p range_i(5, 10) # => [5, 6, 7, 8, 9]
# p range_i(12, 5) # => []

def range_r(start_n, end_n)
  return [start_n] if start_n == end_n - 1
  return [] if end_n < start_n
  arr = []
  arr += [start_n] + range_r(start_n + 1, end_n)
end

# p range_r(1, 3) # => [1, 2]
# p range_r(5, 10) # => [5, 6, 7, 8, 9]
# p range_r(12, 5) # => []


def exponentation_1(b, n)

end





class Array
  def deep_dup
    new_arr = []


    self.each do |ele|
      if !ele.is_a?(Array)
        new_arr << ele
      else
        val = ele.deep_dup
        new_arr << val
      end      
    end
    new_arr
  end
end

# robot_parts = [["nuts", "bolts", "washers"],["tool", ['bulb']]]

# robot_parts_copy = robot_parts.deep_dup

# robot_parts_copy << "LEDs"

# p robot_parts
# p robot_parts_copy


# 0 1 1 2 3 5 8 13 21 34

def fib_r(n)
  return [0,1].take(n) if n <= 2
  prev_fib = fib_r(n - 1)
  prev_fib << prev_fib[-1] + prev_fib[-2]
end

# p fib_r(4)  # => [0, 1, 1, 2]
# p "______________________"
# p fib_r(2)  # => [0, 1]
# p "______________________"
# p fib_r(10) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
 



def fib_i(n)
  fib_start = [0,1]

  while fib_start.length < n 
    fib_start << fib_start[-1] + fib_start[-2]
  end
  fib_start

end


# p fib_i(4)  # => [0, 1, 1, 2]
# p "______________________"
# p fib_i(2)  # => [0, 1]
# p "______________________"
# p fib_i(10) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]



def bsearch(arr, target)
  middle_ele = arr[arr.length/2]
  # return index_of?(middle_ele) if index_of?(middle_ele) == target
  operation = arr.index(middle_ele) <=> target
  return arr.index(middle_ele) if operation == 0

  if operation == -1
    bsearch(arr...middle_ele, target)
  elsif operation == 1
    bsearch(middle_ele..arr[-1])
  end

end



p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
