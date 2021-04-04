#!/bin/env ruby

# Find phrase palindromes
require 'set'
require_relative "dictionary"

include Dictionary


def find_palingrams
  palingrams = []  
  words = Set.new(load("2of4brif.txt"))

  words.each do |word|
    size = word.size
    dorw = word.reverse
    if size > 1
      (0...size).each do |i|
        if word[i..] == dorw[...size-i] && words.include?(dorw[size-i..])
          palingrams << [word, dorw[size-i..]]
        end
        if word[...i] == dorw[size-i..] and words.include?(dorw[...size-i])
          palingrams << [dorw[...size-i], word]
        end
      end
    end
  end

  palingrams
end

palingrams = find_palingrams
palingrams_sorted = palingrams.sort

puts "\nNumber of palingrams found = #{palingrams_sorted.size}"
palingrams_sorted.each { |pa| puts "#{pa[0]} #{pa[1]}" }
