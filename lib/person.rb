require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
    
        if happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end

    end

    def hygiene=(hygiene)

        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end

    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        'all about the benjamins'
    end

    def take_bath
         self.hygiene= @hygiene + 4
         '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene= @hygiene - 3
        self.happiness= @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(obj)
        self.happiness += 3
        obj.happiness += 3
        "Hi #{obj.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
            when 'politics'
                person.happiness -= 2
                self.happiness -= 2
                "blah blah partisan blah lobbyist"
            when 'weather'
                person.happiness += 1
                self.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"

        end
    #     if topic = 'weather'
    #         

    #     elsif topic = 'politics'
    #         person.happiness += 1
    #         self.happiness += 1
    #         "blah blah partisan blah lobbyist"
    #     else
    #         "blah blah blah blah blah"

    #     end
    end

end
