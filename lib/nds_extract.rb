$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require "pry"

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
  directors = [] 
  director_index2 = 0 
  while director_index2 < source.size do
    directors.push(source[director_index2][:name])
    director_index2 += 1 
    
  end
  return directors
  # Write this implementation
end

def total_gross(source)
  directors = list_of_directors(source)
  directors_totals = directors_totals(source)
  running_total = 0 
  numdirectors = 0 
  while numdirectors < directors.length do 
    
    running_total += directors_totals[directors[numdirectors]]
    numdirectors += 1
  end
  return running_total
  
  
#   running_total = 0 
#   numdirectors = 0 
#   while numdirectors < list_of_directors(source).length
#     current_director = list_of_directors(source)[numdirectors]
    
#       running_total += directors_totals(source)[][current_director]
    
     
    
#   numdirectors += 1 
#   end
# return running_total
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end


