#!/bin/env ruby

# Randomly select a name from two arrays and display it on the screen.

def main
  puts "Welcome to the Psych 'Sidekick Name Picker.'"
  puts "A name just like Sean would pick for Gus:\n"

  first = [
    "Baby Oil", "Bad News", "Big Burps", "Bill 'Beenie-Weenie",
    "Bob 'Stinkbug'", "Bowel Noises", "Boxelder", "Bud 'Lite'",
    "Butterbean", "Buttermilk", "Buttocks", "Chad", "Chesterfield",
    "Chewy", "Chigger", "Cinnabuns", "Cleet", "Cornbread", "Crab Meat",
    "Crapps", "Dark Skies", "Dennis Clawhammer", "Dicman", "Elphonso",
    "Fancypants", "Figgs", "Foncy", "Gootsy", "Creasy Jim", "Huckleberry",
    "Huggy", "Ignatios", "Jimbo", "Joe 'Pottin Soil'", "Johnny",
    "Lemongrass", "Lil Debil", "Longbranch", '"Lunch Money"', "Mergatroid",
    '"Mr Peabody"', "Oil-Can", "Oinks", "Old Scratch", "Ovaltine",
    "Pennywhisle", "Pitchfork Ben", "Potato Bug", "Pushmeet",
    "Rock Candy", "Schlomo", "Scratchensniff", "Scut",
    "Sid 'The Squirts'", "Skidmark", "Slaps", "Snakes", "Snoobs",
    "Snorki", "Soupcan Sam", "Spitzitout", "Squids", "Stinky",
    "Storyboard", "Sweet Tea", "TeeTee", "Wheezy Joe",
    "Winston 'Jazz Hands'", "Worms"
  ]

  last = [
    "Appleyard", "Bigmeat", "Bloominshine", "Boogerbottom",
    "Breedslovetrout", "Butterbaugh", "Clovenhoof", "Clutterbuck",
    "Cocktoasten", "Endicott", "Fewhairs", "Gooberdapple", "Goodensmith",
    "Goodpasture", "Guster", "Henderson", "Hooperbag", "Hoosenater",
    "Hootkins", "Jefferson", "Jenkins", "Jingley-Schmidt", "Johnson",
    "Kingfish", "Listenbee", "M'Bembo", "McFadden", "Moonshine", "Nettles",
    "Noseworthy", "Olivetti", "Outerbridge", "Overpeck", "Overturf",
    "Oxhandler", "Pealike", "Pennywhistle", "Peterson", "Pieplow",
    "Pinkerton", "Porkins", "Putney", "Quakenbush", "Rainwater",
    "Rosenthal", "Rubbins", "Sackrider", "Snuggleshine", "Splern",
    "Stevens", "Stroganoff", "Sugar-Gold", "Swackhamer", "Tippins",
    "Turnipseed", "Vinaigrette", "Walkingstick", "Wallbanger", "Weewax",
    "Weiners", "Whipkey", "Wigglesworth", "Wimplesnatch", "Winterkorn",
    "Woolysocks"
  ]

  loop do
    first_name = first.sample
    last_name = last.sample

    puts "\n"
    puts "#{first_name} #{last_name}".color_red
    puts "\n"

    try_again = input("\n\nTry again? (Press Enter else n to quit) ")
    break if try_again.downcase == "n"
  end

  input("\nPress Enter to exit.")
end

class String
  def color_red = "\e[31m#{self}\e[0m"
end

def input(message)
  print message
  gets.chomp
end


if __FILE__ == $PROGRAM_NAME
  main
end
