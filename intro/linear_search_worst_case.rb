def print_worst_case_iterations(array_size)
  (0...array_size).each do |n| 
    iterations = n
    puts n.to_s + ", " + iterations.to_s
  end
end

print_worst_case_iterations(10)
