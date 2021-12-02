bankroll = 1000
min_bet = 5
max_bet = 50000

bet = min_bet

tables = 0
max_amount = 0

while (bankroll > 0 && bet < max_bet) do
  tables += 1
  if bankroll > max_amount
    max_amount = bankroll
  end

  if Random.new.rand < 0.500
    bankroll += bet
    puts("$#{bet} / #{bankroll} 👍")
    bet = min_bet
  else
    bankroll -= bet
    puts("$#{bet} / #{bankroll} 👎")
    if bet < bankroll / 3
      bet *= 2
    else
      bet = min_bet
    end
  end
end

puts("You played at #{tables} tables")
puts("At one point you had #{max_amount}")

if bankroll > 10000
  puts("You Won!!!")
else
  puts("Your out of money...")
end



