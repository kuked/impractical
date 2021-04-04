#!/bin/env ruby

# Find word palindromes.

require_relative "dictionary"
require_relative "string_ext"

include Dictionary
using StringExt

words = load("2of4brif.txt")
palindromes = []

if words
  palindromes = words.select { |w| w.size > 1 && w.palindrome? }
end

puts "\nNumber of palindromes found = #{palindromes.size}"
puts palindromes

