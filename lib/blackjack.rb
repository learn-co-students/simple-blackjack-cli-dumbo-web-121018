def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = deal_card
  hand += deal_card
  display_card_total(hand)
  return hand
end

def hit?(hand)
  prompt_user
  answer = get_user_input
  if answer == "h"
    hand += deal_card
    return hand
  elsif answer == "s"
    return hand
  else 
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
