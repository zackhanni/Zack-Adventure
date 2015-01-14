class SmallRoom < Room
    def initialize
        @entrance_message = "You are in a small room with a small cabinet and a single door leading out."
        @commands = ["open door", "open cabinet", "search cabinet", "search room"]
    end

    def open_door
        Player.enter_room(LargeRoom.new)
    end

    def open_cabinet
        puts "The cabinet is empty"
    end

    def search_cabinet
    end

    def search_room
    end
end
