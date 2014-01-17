require 'debugger'
require 'pp'

require_relative 'card_model'

class Deck
  attr_reader :deck
  def initialize
    # Note: to make code more robust, we can
    # have different arrays for different
    # stages of deck, e.g. one for array with
    # empty lines, one for array w/o empty lines,
    # and one for array of card objs.
    @deck = []
    load_file
    make_cards
  end

  def load_file
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

