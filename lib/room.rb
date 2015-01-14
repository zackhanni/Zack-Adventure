class Room
    attr_accessor :entrance_message, :commands

    def initialize(entrance_message, commands)
        @entrance_message, @commands = entrance_message, commands
    end
end