## Views should be passed an object that the views know how to represent
## Transformation layer


class CardView 

  def render(card) 
    puts
    puts "Definition: \n #{card.definition}"
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
