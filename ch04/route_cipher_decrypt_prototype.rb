#!/bin/env ruby

cipher_text = "16 12 8 4 0 1 5 9 13 17 18 14 10 6 2 3 7 11 15 19"
cipher_list = cipher_text.split
COLS = 4
ROWS = 5
key = "-1 2 -3 4"
translation_matrix = Array.new(COLS, nil)
plaintext = ""
start = 0
stop  = ROWS

key_int = key.split.map(&:to_i)
key_int.each do |k|
  if k < 0
    col_items = cipher_list[start...stop]
  elsif k > 0
    col_items = cipher_list[start...stop].reverse
  end
  translation_matrix[k.abs - 1] = col_items
  start += ROWS
  stop  += ROWS
end

puts "ciphertext = #{cipher_text}"
puts "translation matrix ="
pp translation_matrix
puts "key length = #{key_int.length}"

(0..ROWS - 1).each do |i|
  translation_matrix.each do |col_items|
    word = col_items.pop
    plaintext += word + " "
  end
end

puts "plaintext = #{plaintext}"
