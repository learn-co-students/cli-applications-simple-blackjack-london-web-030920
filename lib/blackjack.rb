require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...12)
end

def display_card_total(number)

puts "Your cards add up to #{number}"

end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets(prompt_user)
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 sum = deal_card + deal_card
display_card_total(sum)
  return sum

end

def invalid_command
  puts "Please enter a valid command"
end


def hit?(current_total)
  prompt_user
  stick_or_hit = get_user_input
  

    if stick_or_hit == "s"
      return current_total
    elsif stick_or_hit == "h"
      current_total += deal_card
    else 
      invalid_command
      hit?(current_total)
end

current_total
  
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
welcome
total += initial_round
total = hit?(total)
display_card_total(total)
  if total > 21
    end_game(total)
  end

end
    
