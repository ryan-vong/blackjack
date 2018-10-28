# Ryan Vong
# 


def blackjack
  dealer_total = 0
  player_total = 0
  player_card1 = 0
  player_card2 = 0
  card = 0

  # Loop till player quits
  go_again = 'y'
  while go_again == 'y'

    puts "---------------------"
    puts "Let's play Blackjack"
    puts "Rules:"
    puts "  - Dealers must take more cards as long as their total is less than 17"
    puts "  - If the player and dealer tie it is called a push. The player does not win or lose money."
    puts "---------------------"

    # Call helper method get_card to generate a card
    dealer_total = get_card

    puts "Dealer starts with a " + dealer_total.to_s

    player_card1 = get_card
    player_card2 = get_card
    player_total = player_card1 + player_card2

    puts "Player's cards: " + player_card1.to_s + ", " + player_card2.to_s

    puts "Player's total: " + player_total.to_s

    # Player's turn to hit or stand until busted or stand
    hit = 'y'
    while hit == 'y'
      print "Hit? (y/n): "
      hit = gets.chomp

      if hit == 'y'
        card = get_card
        puts "Player's card: " + card.to_s
        player_total += card
        puts "Player's total: " + player_total.to_s

        if player_total > 21
          puts "BUST!. Dealer wins no matter what."
          hit = 'n'
          # Skips dealer drawing since player busted
          dealer_total = 100;
        end
      end
    end

    # Dealer's turn to keeps drawing till 17
    while dealer_total < 17
      puts "Dealer total is less than 17."
      print "Dealer must hit. Press any key: "
      dealer = gets.chomp
      card = get_card
      puts "Dealer gets a " + card.to_s
      dealer_total += card
      puts "Dealer's total: " + dealer_total.to_s
    end

    # Calculate result.  Skip busted player > 21
    if player_total <= 21
      puts "-----------------------------------"
      puts "Result: Player #{player_total}, Dealer #{dealer_total}"

      if dealer_total > 21
        puts "Dealer busts. Player wins."
      elsif player_total == dealer_total
        puts "PUSH!. No one wins."
      elsif player_total > dealer_total
        puts "Player wins."
      elsif player_total < dealer_total
        puts "Dealer wins."
      end
      puts "-----------------------------------"
    end

    print "Play again? (y/n): "
    go_again = gets.chomp

  end

end

# Helper method to generate card
def get_card
  rand(10) + 1
end


# Play blackjack
puts blackjack
