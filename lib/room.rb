require_relative 'support'

class Room
    attr_accessor :entrance_message, :commands

    def prompt_for_command
        puts "what will you do?"
        input_command = gets.chomp

        @commands.each do |available_command|
            if input_command == available_command
                return self.send(available_command.snakecase)
            end
        end
        # (else) we should only reach this line if we never returned after
        # finding a matching available command
        puts "I dont understand. try 'open' or 'search' and a location"
    end
end
