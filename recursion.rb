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



def deep_dup(arr)
    return arr if arr.all? {|ele| ele.length == 0}

    out_arr = []

    
  arr.each do |ele|

  end

end

arr = [[1,2],[3,4]]
deep_dup([[1,2],[3,4]])
deep_dup([[],[]]) # => This will output exactly what is put in

