require 'prime'

# check which number is palindrome
class PalindromeCheck
  def check(number)
    string = number.to_s
    string == string.reverse
  end
end

# find the biggest palindrome in the range 10000-1
class BiggestPalindrome < PalindromeCheck
  def find_biggest
    range.find do |number|
      Prime.prime?(number) && check(number)
    end
  end

  def range
    10_000.downto(1)
  end
end

run = BiggestPalindrome.new
puts run.find_biggest
