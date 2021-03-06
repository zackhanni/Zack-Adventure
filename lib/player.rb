require "singleton"

class Player
    include Singleton

    attr_accessor :name, :quest, :color, :current_room, :has_key

    def initialize
        puts "You are about to venture into a magical land, but first we need to
        learn more about you..."
        puts #=>extra spacing
        puts "What is your name?"
        @name = gets.chomp
        puts "What is your quest?"
        @quest = gets.chomp
        puts "What is your favorite color?"
        @color = gets.chomp
        puts #=>extra spacing
        @has_key = false
    end

    def has_key?
        @has_key
    end

    def enter_room(room)
        @current_room = room
        puts room.entrance_message
        room.prompt_for_command
    end
end
