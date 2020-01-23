class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map {|planet| planet.name}
  end

def get_planet_by_name(planet_name)
  #binding.pry
  return @planets.find {|planet| planet.name == planet_name}
end

  def get_largest_planet
    return @planets.max_by { |planet| planet.diameter }
  end

def get_smallest_planet
  return @planets.min_by { |planet| planet.diameter }
end

  def get_planets_with_no_moons
    return @planets.find_all {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(num_of_moons)
    found_planets = @planets.find_all {|planet| planet.number_of_moons > num_of_moons}
    return found_planets.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    found_planets = @planets.find_all {|planet| planet.distance_from_sun < distance}
    return found_planets.count()
  end

  def get_total_number_of_moons
    return @planets.reduce(0) {|sum, planet| sum + planet.number_of_moons }
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    found_planets = @planets.sort_by {|planet| planet.distance_from_sun}
    return found_planets.map {|planet| planet.name}
  end

  def get_planet_names_sorted_by_size_decreasing
    found_planets = @planets.sort_by {|planet| planet.diameter}
    return found_planets.map {|planet| planet.name}.reverse
  end


end
