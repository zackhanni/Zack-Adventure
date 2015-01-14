require 'highline/import'
require './lib/room'
require './lib/player'
Dir[File.dirname(__FILE__) + '/lib/rooms/*.rb'].each {|room_file| require room_file }

player = Player.new

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

if player.favorite_color == "gold" then
    second_color = "black"
else
    second_color = "gold"
end
puts #=>extra spacing

sleep 1.5
enemy_name = player.name.reverse.split.map(&:capitalize).join(' ')
puts "In the the keep's finest #{player.favorite_color} and #{second_color} colored kirtle, a most
unlikely hero embarks on a perilous quest of #{player.quest} in order
to destroy the evil #{enemy_name}!"

sleep 1
castle_name = player.favorite_color.reverse.split.map(&:capitalize).join(' ')
puts "#{player.name} is a handmaiden in Castle #{castle_name}. Well...
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

def open_door_one
    puts "You enter a much larger room. What will you do?"
end

small_room = SmallRoom.new

player.enter_room(small_room)
