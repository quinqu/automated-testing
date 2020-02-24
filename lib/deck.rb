# deck.rb
require_relative 'card'
VALID_VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]
class Deck
  attr_reader :deck

  def initialize
    @deck = []
    52.times do |i|
      value = VALID_VALUES.sample
      suit = VALID_SUITS.sample
      @deck << Card.new(value, suit)
    end 
  end

  def draw
    return @deck[-1]
  end

  def shuffle
    @deck.shuffle
  end
end
