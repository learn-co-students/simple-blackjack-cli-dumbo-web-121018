def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
end

def display_card_total(int)
  puts "Your cards add up to #{int}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card
  display_card_total(num)
  return num
end

def hit?(num)
  loop do
    prompt_user
    user = get_user_input
    if user == "h"
      return num + deal_card
    elsif user != "s"
      invalid_command
    else
      return num
    end
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  num = initial_round
  num = hit?(num)
  display_card_total(num)
  until num > 21
    num = hit?(num)
    display_card_total(num)
  end
end_game(num)
end
