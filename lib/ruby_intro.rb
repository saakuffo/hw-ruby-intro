# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0;
  arr.each { |value| result += value }

  result
end

def max_2_sum arr
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  arr.each_with_index do |value, ind|
    if arr.length - 1 != ind && arr[ind] + arr[ind+1] == n
      return true
    end
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty?

  vowels = %W(a e i o u)
  return false if s[0] && vowels.include?(s[0].downcase) || /\W/.match(s[0])
  return true
end

def binary_multiple_of_4? s
  return false if s.empty?
  num_array = s.split(//)
  num_array.each do |value|
    return false if !(['0', '1'].include?(value))
  end

  num_array.map! {|value| value.to_i}

  current_index = num_array.length - 1
  result = 0
  current_binary_place = 1

  while current_index >= 0
    result += current_binary_place * num_array[current_index]
    current_binary_place *= 2
    current_index -= 1
  end

  return false unless result % 4 == 0
  return true
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % self.price
  end
end
