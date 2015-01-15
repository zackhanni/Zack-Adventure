class SmallRoom < Room
    def initialize
        @entrance_message = "You are in a small room with a small cabinet and a single door leading out."
        @commands = ["open door", "open cabinet", "search cabinet", "search room"]
    end

    def open_door
        @player.enter_room(LargeRoom.new)
    end

    def open_cabinet
        search_cabinet
    end

    def search_cabinet
        if @player.has_key?
            puts "Its empty now"
        else
            puts "Oh look! It's a key!"
            @player.has_key = true
            puts "You pick up the key"
        end
    end

    def search_room
        puts @entrance_message
    end
end
