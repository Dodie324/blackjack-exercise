require_relative 'card'
require_relative 'hand'

class Deck

  SUITS = ["♠", "♣", "♥", "♦"]
  RANKS = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']

  def initialize
    @collection = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @collection << Card.new(rank, suit)
      end
    end

    @collection.shuffle!
  end

  def deal(hand)
    2.times do
      hand.add(@collection.pop)
    end

    puts "#{hand.name} was dealt #{hand.first_card}"
    puts "#{hand.name} was dealt #{hand.second_card}"
    puts "#{hand.name} score: #{hand.value}"
  end

  def hit(hand)
    hand.add(@collection.pop)
    puts
    puts "#{hand.name} was dealt #{hand.last}"
    puts "#{hand.name} score: #{hand.value}"
  end
end
