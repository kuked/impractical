#!/bin/env ruby

# Pseudo bar graph.

class String
  def count_each_alphabet
    # create a counter.
    k = "abcdefghijklmnopqrstuvwxyz".chars
    v = Array.new(k.size, 0)
    counter = Hash[k.zip(v)]

    alphabets = self.downcase.chars.select { |c| c.match /^[[:alpha:]]$/ }    
    alphabets.each { |c| counter[c] += 1 }

    counter
  end
end


# Output a bar graph.

text = "Twinkle, twinkle, little bat! How I wonder what you're at! Up above the world you fly, Like a teatray in the sky."

puts text
text.count_each_alphabet.each do |k, v|
  bar = Array.new(v, k)
  puts "#{k} => #{bar.empty? ? "" : bar}"
end
