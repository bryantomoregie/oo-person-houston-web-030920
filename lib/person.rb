require 'pry'
class Person
 
  attr_reader :name , :bank_account, :happiness, :hygiene
  attr_writer :bank_account
def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8

end 

def happiness=(num)
    @happiness = num
    if num < 0 
        @happiness = 0 
    elsif num > 10
        @happiness = 10
  
    end  
end

def hygiene=(num)
    @hygiene = num
    if num < 0 
        @hygiene = 0 
    elsif num > 10
        @hygiene = 10
  
    end  
end

def happy?
    if @happiness > 7 
        true 
    else 
        return false 
    end 
end

def clean?
    if @hygiene > 7 
        true 
    else 
        return false 
    end 
end
    
def get_paid(salary_amount)
    @bank_account += salary_amount
    return "all about the benjamins"
end 

def take_bath 
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out 
    self.happiness += 2
    self.hygiene -= 3 

    return "♪ another one bites the dust ♫"
end 

def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
      objects.each { |o| o.happiness -= 2}
      first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
      objects.each { |o| o.happiness += 1}
      first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
  end

  def call_friend(friend)
    [friend, self].each {|o| o.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

end 



