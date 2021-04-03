#!/bin/env ruby

# Find word palindromes.

require_relative "dictionary"

include Dictionary

words = load("2of4brif.txt")
palindromes = []

if words
  palindromes = words.select { |w| w.size > 1 && w == w.reverse }
end

puts "\nNumber of palindromes found = #{palindromes.size}"
puts palindromes

