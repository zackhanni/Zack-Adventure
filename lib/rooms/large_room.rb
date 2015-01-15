class LargeRoom < Room
    def initialize
        @entrance_message = "You enter a much larger room entierly colored #{player.color}.
        There is only a locked chest and the door where you entered"
        @commands = ["open door", "open chest", "search chest", "search room", "unlock chest"]
    end

    def open_door
        @player.enter_room(SmallRoom.new)
    end

    def open_chest
        puts "The chest is locked"
    end

    def unlock_chest
    	if @player.has_key?
        	puts "You unlocked the chest!"
    	else
    		puts "You need to find the key first."
    	end
    end

    def search_room
        puts @entrance_message
    end

end