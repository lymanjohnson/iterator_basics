# Print all words in the array but uppercased.
def print_capitals(words)
  words.each {|x|
    puts x.upcase
  }
end



# Double all numbers in the array and return a new array.
def double_it(numbers)
  numbers.map{ |x| x*2}
end

# Return an array of all even numbers in the given array.
def find_evens(numbers)
  numbers.select{|x| x%2==0}
end

# Return the product of all numbers
# Do _NOT_ use numbers.product.
def product(numbers)
  if numbers.length == 0
    return 1
  else
    numbers.reduce{ |x,n| x *= n}
  end
end

# Get all odd numbers from the given array, square them, and
# return a new array of those squares.
def square_only_odds(numbers)
  numbers.select{|x| x%2 != 0}.map{ |x| x**2}
end


# Square all given numbers and sum them.
def sum_of_squares(numbers)
  result = 0
  numbers.each{ |x| result += x**2}
  return result
end

# Return a new array of the ordinals (1 -> 1st) of the numbers given.
def ordinals(numbers)
  numbers.map{|x|
    if x.digits.first == 1
      "#{x}st"
    elsif x.digits.first == 2
      "#{x}nd"
    elsif x.digits.first == 3
      "#{x}rd"
    else
      "#{x}th"
    end
  }
end
