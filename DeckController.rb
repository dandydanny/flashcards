## READ, WHAT DONT KNOW, GOOGLE TO FIND OUT THESE PIECES, PSUEDOCODE

## As a user, I want to be able to guess a word.
## As a user, I want to see if my guess was correct or not.
## As a user, I want to exit the program if I am SICK OF IT!!!!!!!!!

require_relative 'DeckView' 
require_relative 'flashcards_model'
require_relative 'card_model'

class DeckController

  def initialize
    @deck = Deck.new
  end

  def run
    input = ""
    IntroductoryView.new.render
    p @deck
    until input == "end"
      card = @deck.next_card
      DefinitionView.new.render(card.definition)
      outcome = false
      until outcome  
        input = TakeInputView.new.render
        break if input == "end"
        outcome = card.match?(input)
        FeedbackView.new.render(outcome)
      end
    end
  end

end


DeckController.new.run
