require_relative 'card_model'

class Deck
  def initialize
    # Note: to make code more robust, we can
    # have different arrays for different
    # stages of deck, e.g. one for array with
    # empty lines, one for array w/o empty lines,
    # and one for array of card objs.
    @deck = []
    @file = 'flashcard_samples.txt'
    @unprocessed_deck = []
    load_file
    make_cards
  end

  def load_file
    File.open(@file, 'r').each_line do |line|
      @unprocessed_deck << line.strip
    end

    @intermediate_deck = remove_empty_str
  end

  def remove_empty_str
    @unprocessed_deck.delete_if(&:empty?)
  end

  def make_cards
    array = []
    until @intermediate_deck.empty?
     array << Card.new(@intermediate_deck.shift(2))
    end

    @deck = array # KEEP THIS
  end

  def next_card
    @deck.sample
  end

end

