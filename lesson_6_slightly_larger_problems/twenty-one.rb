require 'pry'

    def calculate_hand(hand)
      #Pick the number or letter out of the hand and assign a value
      card_values = []
      aces = []
      hand.each do |card| 
        if card[1].respond_to?(:to_i) && (2..10).include?(card[1])
           card_values << card[1]
        elsif card[1].include?('J') || card[1].include?('Q') || card[1].include?('K') 
           card_values << 10
        elsif card[1].include?('A')
           aces << card[1]
        end 
      end
        sum_with_aces(card_values, aces)
    end

    def sum_with_aces(total_hand, aces)

      if aces.count >= 1
        sum = total_hand.inject(0) {|base, total| base + total }  
        aces.each do |_|
          sum + 11 > 21 ? sum += 1 : sum += 11 
        end
      else 
        sum = total_hand.inject(0) {|base, total| base + total }  
      end
        sum
    end

    def hit
      DECK.pop
    end

    def stay(who)
     puts "#{who} chose to Stay"
    end

    def win?(score)
       return true if score == 21 
    end 

    def play_again? 
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.to_sym
        if answer == :y
          return true
        elsif answer == :n
          return false 
        end 
    end 

    def compare_hands(plyr1, plyr2)
      if plyr1 > plyr2
        return ['Player', plyr1]
      else
        return ['Dealer', plyr2]
      end 
    end 

   def winning_message(flag)
    <<-HEREDOC
      #{flag[0][0]} wins this Game 
      total of: #{flag[0][1]}
    HEREDOC
   end 

   def end_round(*score_results)
      puts "=============="
        puts "Final Score"
        puts "Dealer had #{score_results[0]}, for a total of: #{score_results[1]}"
        puts "Player had #{score_results[2]}, for a total of: #{score_results[3]}"
      puts "=============="
   end 

   def bust?(flag)
    flag.include?('BUST!')
   end

   def game_over?(tally)
      binding.pry
      dealer, player = tally.partition {|x| x == :Dealer}
      if dealer.count == 5
        return :Dealer
      end
      if player.count  == 5
        return :Player
      end 
   end 

   def welcome_message
      <<-HEREDOC
        Welcome to 21

        Rules of the Game:
        Player and Dealer starts with 2 cards. Player can only see 1 Dealer card at a time.
        Your mission is to get to 21 before the Dealer but do not go over. 
        First player to hit 21 wins. First player to go over 21 loses.
        ------------------------------------------------
        Scoring System: 
          • Number cards are worth their Face Value. 
          • King , Queen or Jack cards are all worth 10 points.
          • Aces are worth 1 point if the total of your hand with it is over 21
          • Aces are worth 11 points if the total of your hand with it is less than 21
        First player to 5 rounds won, wins the entire game

      HEREDOC
    end

    puts welcome_message
    #make a deck of cards 
      deck = []
      suit = ['H', 'C', 'D', 'S' ] 
      values =  [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']    
      suit.each {|s| values.each {|v| deck << [s,v]  } }
      DECK = deck.shuffle!

      player_hand = []
      dealer_hand = []
      flag = []
      round = 0
      tally = []
      # player_total = 0 #local variables can not be accessed outside of block 
      # dealer_total = 0

   loop do 
      # dealer deals the hands
       2.times do 
        player_hand << DECK.pop
        dealer_hand << DECK.pop
       end 

       if round > 0 
        ########### Reset Hand 
        player_hand = []
        dealer_hand = []
        2.times do 
          player_hand << DECK.pop
          dealer_hand << DECK.pop
        end 
       end 

       player_total = 0 
       dealer_total = 0

      # dealer shows it's card
      puts  "The Dealer has: #{dealer_hand[1]}" 

        loop do 
          player_total = calculate_hand(player_hand)
          puts "You have: #{player_hand} " + "total: #{player_total}"
          # choose to hit or stay
          puts "Choose one would you like to:  1) Hit or  2) Stay "
          choice = gets.chomp
          if choice.to_i == 1 
            player_hand << hit 
            player_total = calculate_hand(player_hand) 
            if player_total > 21
              flag << 'BUST!'
             break  #break loop set flag
            end 
          elsif choice.to_i == 2
            stay('Player')
            player_total = calculate_hand(player_hand) 
            puts  "You have: #{player_total}"
            break
          end
        end
      
       if bust?(flag)
        puts "Dealer Wins!"
        tally << :Dealer
        end_round(dealer_hand, dealer_total, player_hand, player_total)
        if game_over?(tally)
          break
        end 
        sleep(1)
        answer = play_again?
        if answer == true
           round += 1
           sleep(1) 
           next
        elsif answer == false
          break
        end
       end

       if win?(player_total)
        puts "Player Wins!"
        tally << :Player
        end_round(dealer_hand, dealer_total, player_hand, player_total)
        if game_over?(tally)
          break
        end 
        sleep(1)
        answer = play_again?
        if answer == true
          round += 1
          sleep(1) 
          next 
        elsif answer == false 
          break
        end
       end 

       loop do
         dealer_total = calculate_hand(dealer_hand)
         if dealer_total > 17
          if dealer_total > 21 
            flag << 'BUST!'
            break #break loop set flag
          end       
            dealer_total = calculate_hand(dealer_hand)
            stay('Dealer') 
            break
         elsif 
          dealer_total = calculate_hand(dealer_hand)
          dealer_hand << hit
         end 
        end
       
       if bust?(flag)
        puts "Player Wins!"
        tally << :Player
        end_round(dealer_hand, dealer_total, player_hand, player_total)
        if game_over?(tally)
          break
        end  
        answer = play_again?
        if answer == true
          round += 1
          sleep(1) 
          next 
        elsif answer == false 
          break
        end
       end
      
       if win?(dealer_total) 
        puts "Dealer Wins!"
        tally << :Dealer
        end_round(dealer_hand, dealer_total, player_hand, player_total)
        if game_over?(tally)
          break
        end 
        sleep(1)
        answer = play_again?
        if answer == true
          round += 1
          sleep(1) 
          next 
        elsif answer == false 
          break
        end
       end 
      
       #if player and dealer chooses to stay
       flag << compare_hands(player_total, dealer_total)
       puts winning_message(flag)
       break 

   end
