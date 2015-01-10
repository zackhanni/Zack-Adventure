puts "You are about to venture into a magical land, but first we 
need to learn more about you..."
puts #extra spacing
puts "What is your name?"
player_name = gets.chomp
puts "What is your quest?"
player_quest = gets.chomp
puts "What is your favorite color?"
player_color = gets.chomp

#put fake loading meters here like in minecraft intro.

enemy_name = player_name.reverse.split.map(&:capitalize).join(' ')
puts "The great hero #{player_name} embarks on a most perilous quest 
of #{player_quest} in order to destroy the evil #{enemy_name}!"
puts #extra spacing
puts "Where would you like to go on this journey? Name any place, 
time, or dimention..."
meaningless_variable = gets.chomp
puts "Guess what? I dont care where you want to go because you're not 
the author of this program."


