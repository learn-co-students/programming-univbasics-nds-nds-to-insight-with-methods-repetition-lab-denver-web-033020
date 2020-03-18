$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  index = 0
  directors_names = []
  
  while index < source.length do
    directors_names << source[index][:name]
    index += 1
  end  
  
  directors_names
end

def total_gross(source)
  grand_total = 0
  index = 0
  
  while index < source.length do
    director = source[index]
    grand_total += gross_for_director(director) 
    index += 1
  end
  
  grand_total
end


