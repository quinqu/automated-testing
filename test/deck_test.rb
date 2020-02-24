require_relative 'test_helper'

describe Deck do
  it "should be an array" do 
  deck_deck = Deck.new

  expect(deck_deck.deck).must_be_instance_of Array

  end 

  it "an element should be card " do 
    deck_deck = Deck.new
  
    expect(deck_deck.deck[1]).must_be_instance_of Card
  
    end
    
  it "should return a Card" do 
    deck = Deck.new 

    expect(deck.draw).must_be_instance_of Card 

  end 


end
