#!/bin/env ruby

# Find word anagrams.

require_relative "dictionary"

include Dictionary

words = load("2of4brif.txt")

anagrams = []

name = "Foster"
puts "Input name = #{name}"

name.downcase!
puts "Using name = #{name}"

name_sorted = name.chars.sort

words.each do |word|
  word = word.downcase
  if word != name
    if word.chars.sort == name_sorted
      anagrams << word
    end
  end
end

if anagrams.empty?
  puts "You need a larger dictionary or a new name!"
else
  puts "Anagrams ="
  puts anagrams
end
