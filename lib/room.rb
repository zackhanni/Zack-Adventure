require_relative 'support'

class Room
    attr_accessor :entrance_message, :commands

    def initialize
        @player = Player.instance
    end

    def prompt_for_command
        puts "what will you do?"
        input_command = gets.chomp

        @commands.each do |available_command|
            if input_command == available_command
                self.send(available_command.snakecase)
                prompt_for_command
            end
        end

        puts "I dont understand. try 'open' or 'search' and a location"
    end
end
