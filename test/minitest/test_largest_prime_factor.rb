require "minitest/autorun"
require "./largest_prime_factor.rb"

class TestLargestPrimeFactor < Minitest::Test
  def test_largest_prime_factor
    assert_equal 11, largest_prime_factor(3960)
  end

  def test_largest_prime_factor_2
    assert_equal 3, largest_prime_factor(24)
  end

  def test_largest_prime_factor_3
    assert_equal 5, largest_prime_factor(180)
  end
end