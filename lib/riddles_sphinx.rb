#!/usr/bin/ruby

class Riddles
  def initialize(answer)
      @answer = answer
    end

def get_answer(answer)
  answer = ""
  loop do
    print "It goes vroom ,when you use it you feel like Fred flint stone: "
    answer = gets.chomp
    if answer == "car"
      puts "gg"
        break
    else
      puts "guess again"
    end
  end
    return answer
end
# puts "Congrats you pass"
end
