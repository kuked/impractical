#!/bin/env ruby

$LOAD_PATH.unshift("#{__dir__}/../helpers")

require "impractical_helper"
include ImpracticalHelper
using StringExt

# Pig Latin generator.
# https://en.wikipedia.org/wiki/Pig_Latin

def main

  puts "Pig Latin generator."

  loop do
    word = input("Enter a word> ")
    puts word.latinize.color_red

    try_again = input("\n\nTry again? (Press Enter else n to quit) ")
    break if try_again.downcase == "n"    
  end

  input("\nPress Enter to exit.")
end

class String
  def latinize
    c = self[0]
    unless c
      self
    else
      "aeiou".include?(c.downcase) ? "#{self}way" : "#{self[1..]}#{c.downcase}ay"
    end
  end
end
  
if __FILE__ == $PROGRAM_NAME
  main
end
