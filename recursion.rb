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
  return 
end