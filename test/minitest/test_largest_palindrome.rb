require "minitest/autorun"
require "./largest_palindrome.rb"

class TestLargestPalindrome < Minitest::Test
  def test_largest_palindrome
    assert_equal 906609, largest_palindrome
  end

  def test_largest_palindrome_2
    refute_equal 906610, largest_palindrome
  end
end