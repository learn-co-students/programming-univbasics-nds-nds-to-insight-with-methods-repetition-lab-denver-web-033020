$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pp'

def directors_totals(source)
  #pp source
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  pp result
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
  directors_list = []
  director_index = 0 
  while director_index < source.length do 
    directors_list.push(source[director_index][:name])
    director_index += 1 
  end 
  directors_list
  # Write this implementation
end


def total_gross(source)
  director_earning_hash = directors_totals(source)
  director_names = list_of_directors(source)
  i = 0
  total = 0
  while i < director_names.length do
    dir_name = director_names[i]
    total += director_earning_hash[dir_name]
    i += 1
end
total
end	
# def total_gross(source)
#   total_gross_of_earnings = 0
#   director_index = 0
#   while director_index < source.size do
#     total_gross_of_earnings += gross_for_director( source[director_index] )
#       director_index += 1
# end	
# total_gross_of_earnings
# end

