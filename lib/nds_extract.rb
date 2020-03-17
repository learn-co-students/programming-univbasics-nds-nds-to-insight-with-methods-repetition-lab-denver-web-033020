$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'
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
  index = [] 
 i = 0
  while i < source.length do
    index << source[i][:name]
    i += 1
  
  # Write this implementation
end
index
  
end

def total_gross(nds) 
  director_earnings = directors_totals(nds) 
  director_names = list_of_directors(nds)
  
  director_index = 0
  totals = 0
   
  while director_index < director_names.length do
   director_name = director_names[director_index]
   
   totals += director_earnings[director_name]
    director_index += 1 
    
  end
  
  return totals

end
