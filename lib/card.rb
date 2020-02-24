
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if (value > 0) && (value < 14)
      @value = value 
    else
      raise ArgumentError.new("Invalid value") 
    end 

    if [:hearts, :spades, :clubs, :diamonds].include?(suit)
      @suit = suit 
    else 
      raise ArgumentError.new("Not a valid suit")
    end 
  end

  def to_s
    if @value > 10
      return "#{num_to_face(@value)} of #{@suit}"
    else
      return "#{@value} of #{@suit.to_s}"
    end 
  end

  def num_to_face(card)
    if card == 11
      return "Jack"
    elsif card == 12 
      return "Queen"
    elsif card == 13
      return "King"
    elsif card == 1 
      return "Ace"
    else 
      raise ArgumentError.new("Invalid card")
    end 

  end 

end 




