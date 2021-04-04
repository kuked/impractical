#!/bin/env ruby

# Find phrase palindromes

require_relative "dictionary"

include Dictionary


def find_palingrams
  palingrams = []  
  words = load("2of4brif.txt")

  words.each do |word|
    size = word.size
    dorw = word.reverse
    if size > 1
      (0...size).each do |i|
        if word[i..] == dorw[..i-1] && words.include?(dorw[i-1..])
          palingrams << [word, dorw[i-1..]]
        end
        if word[..i] == dorw[i-1..] and words.include?(dorw[..i-1])
          palingrams << [dorw[..i-1], word]
        end
      end
    end
  end

  palingrams
end

palingrams = find_palingrams
palingrams_sorted = palingrams.sort

puts "\nNumber of palingrams found = #{palingrams_sorted.size}"
palingrams.each { |pa| puts "#{pa[0]} #{pa[1]}" }
