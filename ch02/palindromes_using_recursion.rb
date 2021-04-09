#!/bin/env ruby

# Find word palindromes.

$LOAD_PATH.unshift("#{__dir__}/../helpers")

require "impractical_helper"
include ImpracticalHelper

require_relative "string_ext"
using StringExt

words = load("2of4brif.txt")
palindromes = []

if words
  palindromes = words.select { |w| w.size > 1 && w.palindrome? }
end

puts "\nNumber of palindromes found = #{palindromes.size}"
puts palindromes

