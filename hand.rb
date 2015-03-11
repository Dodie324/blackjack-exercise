require 'pry'
class Hand
  def initialize(string)
    @name = string
    @hand = []
  end

  def add(card)
    @hand << card
  end

  def name
    @name
  end

  def first_card
    @hand[0]
  end

  def second_card
    @hand[1]
  end

  def last
    @hand.last
  end

  def value
    value = 0
    @hand.each do |card|
        if (card.rank == 'J' || card.rank == 'Q' || card.rank == 'K')
          value += 10
        elsif card.rank == 'A' && value < 11
          value += 11
        elsif card.rank == 'A' && value > 10
          value += 1
        else
          value += card.rank.to_i
        end
    end
    value
  end

end
