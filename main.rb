puts 
"You are about to venture into a magical land, but first we need to 
learn more about you..."
puts #=>extra spacing
puts "What is your name?"
player_name = gets.chomp
puts "What is your quest?"
player_quest = gets.chomp
puts "What is your favorite color?"
player_color = gets.chomp

#put fake loading meters here like in minecraft intro.

=begin
if player_color == "gold" then
	second_color = "black"
elserequire ""
	second_color = "gold"
end
=end


enemy_name = player_name.reverse.split.map(&:capitalize).join(' ')
puts 
"In the the keep's finest #{player_color} colored kirtle, a most 
unlikely hero embarks on a perilous quest of #{player_quest} in order 
to destroy the evil #{enemy_name}!"

puts #=>extra spacing
castle_name = player_color.reverse.split.map(&:capitalize).join(' ')
puts 
"#{player_name} is a handmaiden in Castle #{castle_name}. Well... 
long story short humans in an alternate reality found out how to make 
the zombie virus... the hard way"
puts #=>extra spacing
puts 
"Humans in that reality had time machines, so the world counsil came 
up with a plan to dump them here in your time!"
puts #=>extra spacing
puts "Now it's up to you to save your world!"

=begin
require 'highline/import'
confirm = ask("Ready to play? [Y/N] ") { |yn| yn.limit = 1, yn.validate = /[yn]/i }
exit unless confirm.downcase == 'y'
=end


