class Change
  class << self
    def generate(amount, coins)
      # Write a program that will correctly determine the fewest number of coins
      # to be given to the user such that the sum of the coins' value would
      # equal the correct amount of change.
      #
      # Given an infinite supply of coins with different values
      # find the smallest number of coins needed to make a desired
      # amount of change.
      # if amount == 0 then return 0
      coin_combos = []
      current = 0
      coin = coins[current]
      remaining_amount = amount

      until remaining_amount == 0
        until remaining_amount <= coin
          current += 1
          coin = coins[current]
        end
        coin_combos << coin
        if coin < remaining_amount && coin > 0
          remaining_amount -= coin
        end
      end
      return coin_combos
    end
  end
end


# 1) there is one coin equal to the desired change in the array
#   if so, return coin
# 2) there are not enough coins to provide accurate change
# 3) there will require n amount of coins to equal change (the whole array)
