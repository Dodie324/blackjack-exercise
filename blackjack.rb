#encapsulation - hide details and data in your class to provide a clear and simple interface
#inheritance - class hierarchy improves readability and enables code reuse
#abstraction - allow code to use your class without knowing about how it works
#polymorphism

require 'pry'

SUITS = ["♠", "♣", "♥", "♦"]
VALUES = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@value)
  end

  def ace?
    ['A'].include?(@value)
  end

end

class Deck
  def initialize
     @collection = []
     SUITS.each do |suit|
      VALUES.each do |value|
        @collection << Card.new(value, suit)
      end
    end

    @collection.shuffle!
  end

  def deal
    @collection.pop
  end
end

class Hand
  def initialize
    @deck = Deck.new
    @player_score = 0
    @dealer_score = 0
  end

  def card_value
    # if @deck.deal.face_card?
    #   @value = 10
    # elsif @deck.deal.ace?

  end

  def players_initial_hand
    first_card  = @deck.deal
    second_card = @deck.deal

    "Player was dealt #{first_card.value}#{first_card.suit}\nPlayer was dealt #{second_card.value}#{second_card.suit}"
  end

  def players_initial_score

  end

  def dealers_initial_hand
    first_card  = @deck.deal
    second_card = @deck.deal
  end

end


hand = Hand.new
player_hand = hand.players_initial_hand
binding.pry
