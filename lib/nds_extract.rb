$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require "pp"
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

# prompt asks us to create a list of directors with their names only using source as an argument. pping source indicates that source is the entire nds
def list_of_directors(source)
 dir_list = []
 dir_index =0 
 while dir_index<source.length do
   dir_list << source[dir_index][:name]
  dir_index +=1 
end
dir_list
end

# the goal is to add up gross from every director and return the total amount
def total_gross(source)
  total =0 
  name_key = list_of_directors(source)
  individual_gross_hash = directors_totals(source)
  dir_index=0
  while dir_index < name_key.length
    total+= individual_gross_hash[name_key[dir_index]]
    dir_index+=1 
  end
  total
end
 







































=begin
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
  list_of_directors =[]
  dir_index =0
  while dir_index<source.length do
  list_of_directors.push(source[dir_index][:name])
  dir_index+=1
  end
  list_of_directors
end

def total_gross(source)
  total =0 
  hash_contains_gross = directors_totals(source)
  array = list_of_directors(source)
  array_index =0 
  while array_index<array.length do 
    total = total + hash_contains_gross[array[array_index]]
    array_index+=1 
  end
  total
end
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
=end

