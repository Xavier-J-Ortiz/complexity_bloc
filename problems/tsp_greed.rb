def tsp_greed(starting_point, cities)
  current_coord = starting_point.values.first
  visited_cities = [starting_point.keys.first]
  map_route(cities, current_coord, visited_cities)
  visited_cities.map! {|city| {city => cities[city]}}
end

def map_route(cities, current_coord, visited_cities)
  while cities.length != visited_cities.length
    next_city = nearest_possible_city(current_coord, cities, visited_cities).keys.first
    visited_cities.push(next_city)
    current_coord = cities[next_city]
  end
end


def nearest_possible_city(current_coord, cities, visited_cities)
  shortest = {:none => Float::INFINITY}
  cities.each do |city, coordinates|
    unless visited_cities.include?(city)
      shortest = determine_if_shortest(shortest, city, coordinates, current_coord)
    end
  end
  shortest
end

def determine_if_shortest(shortest, city, coordinates, current_coord)
  distance = euclidean_distance_between_cities(coordinates, current_coord)
  if distance < shortest.values.first
    shortest = {city => distance}
  end
  shortest
end

def euclidean_distance_between_cities(coord_1, coord_2)
  Math.sqrt((coord_2[0] - coord_1[0])**2 + (coord_2[1] - coord_1[1])**2)
end
