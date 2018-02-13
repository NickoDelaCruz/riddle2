#!/usr/bin/ruby

class Riddles
  def initialize(answer1, answer2)
    @answer1 = answer1
    @answer2 = answer2
  end

  def questions
      if @answer1 != "car" && @answer2 != "dog"
        return "Try Again"
      else
        return "Success"
      end
    end

end
