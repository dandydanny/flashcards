class IntroductoryView

  def render
puts <<-STRING
Welcome to Ruby Flash Cards. To play, just enter the corrrreeect term for each 
definition!!!!!!! Guesses are case sensitive, be specific. 

If you wish to end the game, please type end at any time. 

Ready? (We aren't asking, we're telling you that you are ...) 

GOOO!!!
STRING
  end

end

class DefinitionView

  def render(definition)
    puts "Definition: \n #{definition}"
  end

end

class TakeInputView

  def render
    print "Guess: "
    gets.chomp
  end

end

class FeedbackView

  def render(correct_guess)
    puts correct_guess ? "Correct" : "WRONGGGG!!!!!!!! TRY AGAIN!!!!!!!!"
  end

end

# IntroductoryView.new.render

# DefinitionView.new.render("Ducks are fast and fly!")

# puts "OK here comes our input taker ... "

# input = TakeInputView.new.render

# puts input

# correct = FeedbackView.new.render(true) #== "Correct"

# # puts correct == "Correct"

# incorrect = FeedbackView.new.render(false) #== "WRONGGGG!!!!!!!! TRY AGAIN!!!!!!!!"

# puts incorrect == "WRONGGGG!!!!!!!! TRY AGAIN!!!!!!!!"
