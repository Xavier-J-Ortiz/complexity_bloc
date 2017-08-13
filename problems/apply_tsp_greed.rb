require_relative 'tsp_greed'

important_cities = {
  :new_york => [40.7128, 74.0059],
  :chicago => [41.8781, 87.6298],
  :atlanta => [33.7490, 84.3880],
  :san_francisco => [37.7749, 122.4194],
  :portland => [45.5231, 122.6765],
  :seattle => [47.6062, 122.3321],
  :fargo => [46.8772, 96.7898],
  :miami => [25.7617, 80.1918],
  :houston => [29.7604, 95.3698],
  :san_diego => [32.7157, 117.1611],
  :boston => [42.3601, 71.0589],
  :lebanon => [39.8097, 98.5556] #Kansas
}

puts tsp_greed({:lebanon => [39.8097, 98.5556]}, important_cities).to_s
puts
puts tsp_greed({:san_diego => [32.7157, 117.1611]}, important_cities).to_s
puts
puts tsp_greed({:new_york => [40.7128, 74.0059]}, important_cities).to_s
