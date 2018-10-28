# Simple Blackjack game written in Ruby
# Only a dealer and player are involved.
# Card is generated using random generator between 1-10 inclusive.
#
# Rules:
# - Dealer must hit soft 17
#

Usage: ruby blackjack.rb

Output:
---------------------
Let's play Blackjack
Rules:
  - Dealers must take more cards as long as their total is less than 17
  - If the player and dealer tie it is called a push. The player does not win or lose money.
---------------------
Dealer starts with a 2
Player's cards: 4, 4
Player's total: 8
Hit? (y/n): y
Player's card: 2
Player's total: 10
Hit? (y/n): y
Player's card: 1
Player's total: 11
Hit? (y/n): y
Player's card: 8
Player's total: 19
Hit? (y/n): n
Dealer total is less than 17.
Dealer must hit. Press any key: d
Dealer gets a 6
Dealer's total: 8
Dealer total is less than 17.
Dealer must hit. Press any key: d
Dealer gets a 2
Dealer's total: 10
Dealer total is less than 17.
Dealer must hit. Press any key: d
Dealer gets a 5
Dealer's total: 15
Dealer total is less than 17.
Dealer must hit. Press any key: d
Dealer gets a 3
Dealer's total: 18
-----------------------------------
Result: Player 19, Dealer 18
Player wins.
-----------------------------------
Play again? (y/n): n
