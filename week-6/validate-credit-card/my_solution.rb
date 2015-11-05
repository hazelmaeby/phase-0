# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [w/ Kris B ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: a 16 digit number
  # Output: true or false.
  # Steps:
  # 1. RAISE ERROR if not 16 digits
  # 2. INITIALIZE instance variable with the 16 digit number
  # 3. Separate each digit into an array
  # 4. Every even index in the array is doubled
  # 5. Separate each index in the array into its digits
  # 6. Add all digits, and set them equal to new variable
  # 7. Check to see if variable is divisible by 10
  # 8. RETURN true or false based on outcome


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new ("Must be 16 digits")
    else
      @number = number
    end
  end

  def check_card
    new_array = @number.to_s.split("")
    new_array.each_with_index do |item, index|
      if index % 2 == 0
         new_array[index] = item.to_i * 2
      else
        new_array[index] = item.to_i
      end
    end
    new_array.each_with_index do |item, index|
      if item >= 10
        new_array[index] = item - 10
        new_array.push(1)
      end
    end
    if new_array.reduce(:+) % 10 == 0
      return true
    else
      return false
    end
  end

end

card = CreditCard.new(1266123412341234)

p card.check_card


# Refactored Solution








# Reflection
