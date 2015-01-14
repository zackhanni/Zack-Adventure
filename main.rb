require 'highline/import'

puts "You are about to venture into a magical land, but first we need to 
learn more about you..."
puts #=>extra spacing
puts "What is your name?"
player_name = gets.chomp
puts "What is your quest?"
player_quest = gets.chomp
puts "What is your favorite color?"
player_color = gets.chomp
puts #=>extra spacing

loading_phrases = ["Gathering Resources", "Feeding Cats", "Consolidating Pokemon Cards"]
loading_phrases.each do |phrase|
	puts phrase.to_s
	20.times do
		print "="
		sleep 0.12
	end
	sleep 0.25
	puts " 100% Complete"
	sleep 0.5
	puts #=>extra spacing
end

if player_color == "gold" then
	second_color = "black"
else
	second_color = "gold"
end
puts #=>extra spacing

sleep 1.5
enemy_name = player_name.reverse.split.map(&:capitalize).join(' ')
puts "In the the keep's finest #{player_color} and #{second_color} colored kirtle, a most 
unlikely hero embarks on a perilous quest of #{player_quest} in order 
to destroy the evil #{enemy_name}!"

sleep 1
castle_name = player_color.reverse.split.map(&:capitalize).join(' ')
puts "#{player_name} is a handmaiden in Castle #{castle_name}. Well... 
long story short humans in an alternate reality found out how to make 
the zombie virus... the hard way"
puts #=>extra spacing
puts "Humans in that reality had time machines, so the world counsil came 
up with a plan to dump them, what your people call the #{enemy_name}s, 
here in your time!"
puts #=>extra spacing
puts "Now it's up to you to save your world!"

confirm = ask("Ready to play? [Y/N] ") { |yn| yn.limit = 1, yn.validate = /[yn]/i }
exit unless confirm.downcase == 'y'

def open_cabinet
	puts "The cabinet is empty"
end

def open_door_one
	puts "You enter a much larger room. What will you do?"
end

puts "You are in a small room with a small cabinet and a single door leading out.
what will you do?"
small_room_do = gets.chomp
case small_room_do
	when "open door"
		return open_door_one
	when "open cabinet"
		return open_cabinet
	when "search cabinet"
		return open_cabinet
	when "search room"
		return room_one
	else puts "I dont understand. try 'open' or 'search' and a location"
end

