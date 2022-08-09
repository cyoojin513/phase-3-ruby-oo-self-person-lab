# require 'pry'

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = 
            if num > 10
                num = 10
            elsif num < 0
                num = 0
            else num
            end
    end

    def hygiene=(num)
        @hygiene =
            if num > 10
                num = 10
            elsif num < 0
                num = 0
            else num
            end
    end

    def clean?
         self.hygiene > 7
    end

    def happy?
         self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end

    
end

# p1 = Person.new("Yoojin")
# p2 = Person.new("Brian")

# binding pry
# 0
