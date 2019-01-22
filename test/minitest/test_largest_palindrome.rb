require "minitest/autorun"
require "../../largest_palindrome.rb"

class TestFactorial < Minitest::Test
  def test_largest_palindrome
    assert_equal 906609, largest_palindrome
  end
end