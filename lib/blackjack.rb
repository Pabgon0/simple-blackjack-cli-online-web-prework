def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
total = deal_card + deal_card
display_card_total(total)
total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  hit?(total)
  display_card_total(total)
  until total >= 21
  hit?(total)
  display_card_total(total)
  end
end_game(total)
end
    
