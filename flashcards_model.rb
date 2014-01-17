require 'debugger'
require 'pp'

require_relative 'card_model'

class Deck
  attr_reader :deck
  def initialize
    # Note: to make code 
    @deck = []
    load_file
  end

  def load_file
    # deck = []
    File.open('flashcard_samples.txt', 'r').each_line do |line|
      @deck << line.strip
    end

    @deck = remove_empty_str
  end

  def remove_empty_str
    @deck.delete_if(&:empty?)
  end

  def make_cards
    array = []
    while !@deck.empty?
     array << Card.new(@deck.shift(2))
    end

    @deck = array
  end

  def next_card
    @deck.sample
  end

end


# Driver / test
mydeck = Deck.new

mydeck.make_cards
puts "should get one card obj ---------------"
pp mydeck.next_card.definition
pp mydeck.next_card.term