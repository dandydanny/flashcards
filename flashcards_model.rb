require 'debugger'
require 'pp'

require_relative 'card_model'

class Deck
  attr_reader :deck
  def initialize
    @deck = []
  end

  def loadfile
    deck = []
    File.open('flashcard_samples.txt', 'r').each_line do |line|
      deck << line.strip
    end

    @deck = remove_empty_str(deck)
  end

  def remove_empty_str(deck)
    deck.delete_if(&:empty?)
  end

  def make_cards
    # deck << Card.new(def,term)
    array = []
    while !@deck.empty?
     array << Card.new(@deck.shift(2))
    end

    puts "----------------should get arr of objs"
    p array
    
    # debugger
  end

end





# Driver / test
# mydeck = Deck.new

# mydeck.loadfile

# pp mydeck.make_cards
