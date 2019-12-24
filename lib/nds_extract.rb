$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  movie = 0
  while movie < director_data[:movies].length do
    gross += director_data[:movies][movie][:worldwide_grosses]
  end
  return {director_data[:name] => gross }
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_count = 0
  while director_count < nds.length do
    result << gross_for_director(nds[director_count])
  end
  nil
end

hash = {directors_database[0][:name] => 42}
puts hash