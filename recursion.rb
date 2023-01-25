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

    # self.each_with_index do |ele, index|
    #   if !ele.is_a?(Array)
    #     val = self[index]
    #     new_arr << val
    #   else
    #     ele.deep_dup
    #   end
    # end
    new_arr
  end
end

robot_parts = [["nuts", "bolts", "washers"],["tool", ['bulb']]]

robot_parts_copy = robot_parts.deep_dup

robot_parts_copy << "LEDs"

p robot_parts
p robot_parts_copy