#!/bin/env ruby

# Find phrase anagrams.

$LOAD_PATH.unshift("#{__dir__}/../helpers")

require "impractical_helper"
include ImpracticalHelper
using StringExt

$words = load("2of4brif.txt")
$words << "a"
$words << "i"
$words.sort!
$ini_name = input("Enter a name: ")

def find_anagrams(name, words)
  name_counter = name.count_each_char

  anagrams = []
  words.each do |word|
    test = ""
    word_counter = word.downcase.count_each_char
    word.each_char do |c|
      if word_counter[c] <= name_counter[c]
        test << c
      end
    end
    if test.count_each_char == word_counter
      anagrams << word
    end
  end

  puts anagrams
  puts ""
  puts "Remaining letters = #{name}"
  puts "Number of remaining letters = #{name.length}"
  puts "Number of remaining (real word) anagrams = #{anagrams.length}"
end


def process_choice(name)
  loop do
    choice = input("\nMake a choice else Enter to start over or # to end: ")
    if choice.empty?
      main
    elsif choice == "#"
      exit
    else
      candidate = choice.downcase.split.join
    end

    left_over = name.chars
    candidate.each_char do |c|
      if left_over.include? c
        left_over.delete_at left_over.index(c)
      end
    end

    if name.length - left_over.length == candidate.length
      return choice, left_over.join 
      break
    else
      puts "Won't work! Make another choice!".color_red
    end
  end
end

def main
  name = $ini_name.downcase.split.join
  name.tr! "-", ""

  limit = name.length
  phrase = ""
  running = true

  while running do
    temp_phrase = phrase.tr " ", ""

    if temp_phrase.length < limit
      puts "Length of anagram phrase = #{temp_phrase.length}"

      find_anagrams name, $words
      puts "Current anagram phrase = #{phrase.color_red}"

      choice, name = process_choice(name)
      phrase << choice + " "
    elsif temp_phrase.length == limit
      puts "\n***** FINISHED!!! *****"
      puts "Anagram of name = #{phrase.color_red}"

      try_again = input("\n\nTry again? (Press Enter else \"n\" to quit) ")
      if try_again.downcase == "n"
        running = false
        return
      end
    else
      main
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  main
end
