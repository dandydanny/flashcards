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

    @deck = array
    
    # debugger
  end

  def next_card
    @deck.sample
  end

end





# Driver / test
mydeck = Deck.new

mydeck.loadfile

mydeck.make_cards
puts "should get one card obj ---------------"
p mydeck.next_card
