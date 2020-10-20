# your code goes here
# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
      
    end  
  
    def happiness=(val)
      if val < 0
        @happiness = 0
      elsif val > 10
        @happiness = 10
      else
        @happiness = val
      end
    end
  
    def hygiene=(val)
      if val < 0
        @hygiene = 0
      elsif val > 10
        @hygiene = 10
      else
        @hygiene = val
      end
    end
  
    def happy?
      happiness > 7
    end
  
    def clean?
      hygiene > 7
    end
  
    def get_paid(salary)
        @bank_account+= salary
        "all about the benjamins"
    # adds the money to account.
    #returns a string. prints "all about the benjys"
    end
  
    def take_bath
        self.hygiene+= 4
       
       "♪ Rub-a-dub just relaxing in the tub ♫"
      #return string "♪ Rub-a-dub just relaxing in the tub ♫ "
    end
  
    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
      #happiness + 2, hygiene +3
      # returns "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

      # happiness of persno and friend +3
      # returns "hi friend, it's person name"
    end
  
    def start_conversation(friend, topic)

        case topic 
        when "politics"
            self.happiness-=2
            friend.happiness-=2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness+=1
            friend.happiness+=1
            "blah blah sun blah rain"
        else
             "blah blah blah blah blah"
        end



      #if politics -> sadder. return "blah blah partisan blah lobbyist"
      # if weather -> happiner, rturn "blah blah sun blah rain"
      # else -> no change in happiness, return "blah blah blah blah blah"
    end
  
  end
