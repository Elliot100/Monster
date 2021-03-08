# PHASE 2
def convert_to_int(str)
  case str
  when 'one'
    1
  when 'two'
    2
  when 'three'
    3
  when 'four'
    4
  when 'five'
    5
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise p "Sorry, that's not one of my fav food"
  end 
end

def feed_me_a_fruit
  begin
  puts "Hello, I am a friendly monster. :)"
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  
  reaction(maybe_fruit) 
  rescue
    p "You can guess again if you give me coffee"
    maybe_fruit = gets.chomp
    if maybe_fruit == "coffee"
      retry
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.length == 0 || fav_pastime.length == 0
      raise p "sorry, please enter both the name of the monster and fav_pastime"
    else
      @name = name
      @fav_pastime = fav_pastime
    end
    if yrs_known < 5
      raise p "sorry, to be best friends, we need to know each other at least 5 years"
    else
      @yrs_known = yrs_known
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


