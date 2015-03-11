require 'pry'

require_relative 'deck'
require_relative 'hand'

def welcome
  puts "Welcome to Black Jack!"
end

welcome
puts
deck = Deck.new
player_hand = Hand.new("Player")
dealer_hand = Hand.new("Dealer")

deck.deal(player_hand)
puts

input = nil
until input == "S" || player_hand.value > 21
  print "Hit or stand (H/S): "
  input = gets.chomp
  if input == "H"
    deck.hit(player_hand)
    puts
  end
end

if player_hand.value > 21
  puts "Bust! You lose.."
else
  puts
  deck.deal(dealer_hand)

  until dealer_hand.value >= 17
    deck.hit(dealer_hand)
  end

  if player_hand.value > dealer_hand.value
    puts
    puts "You win!"
  elsif dealer_hand.value > 21
    puts
    puts "You win!"
  elsif player_hand.value == dealer_hand.value
    puts
    puts "Tie!"
  else
    puts
    puts "Dealer wins!"
  end
end

