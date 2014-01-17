## READ, WHAT DONT KNOW, GOOGLE TO FIND OUT THESE PIECES, PSUEDOCODE

## As a user, I want to be able to guess a word.
## As a user, I want to see if my guess was correct or not.
## As a user, I want to exit the program if I am SICK OF IT!!!!!!!!!

require_relative 'DeckView' 
require_relative 'flashcards_model'

class DeckController
  
  attr_accessor :user_input, :correct_answer

  SAFE_WORD = "quit"

  def initialize(filename)
    @deck = Deck.new(filename)
    self.correct_answer = false
    self.user_input = ""
  end

  def run
    display_introduction
    until user_input == SAFE_WORD
      present_definition
      until correct_answer  
        take_guess
        break if user_input == SAFE_WORD
        display_feedback
      end
    end
  end

  def display_introduction
puts <<-STRING
Welcome to Ruby Flash Cards. To play, just enter the corrrreeect term for each 
definition!!!!!!! Guesses are case sensitive, be specific. 

If you wish to end the game, please type quit at any time. 

Ready? (We aren't asking, we're telling you that you are ...) 

GOOO!!!

STRING
  end

  def fetch_card
    card = @deck.next_card
  end

  def present_definition
    fetch_card
    DefinitionView.new.render(card)
  end

  def take_guess
    self.user_input = fetch_guess
  end

  def fetch_guess
    puts
    print "Guess: "
    gets.chomp
  end

  def display_feedback
    correct_answer = card.match?(user_input)
    FeedbackView.new.render(correct_answer)
  end

end


DeckController.new(ARGV[0]).run
