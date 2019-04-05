def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  put "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}.Thanks for playing!"
end

def initial_round
  card_one = deal_card + deal_card
  card_two = deal_card
  card_total = card_one + card_two
  
  display_card_total(card_total)
  card_total +=  deal_card
  display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  
  while input != "h" || input != "s"
  invalid_command
  prompt_user
  get_user_input
  end
  
  if input == "h"
    new_card = deal_card
    card_total = card_total + new_card
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
