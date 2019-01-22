require "minitest/autorun"
require "../../factorial.rb"

class TestFactorial < Minitest::Test
	def test_factorial_1
		assert_equal 3628800, factorial(10)
	end

	def test_factorial_2
		assert_equal 265252859812191058636308480000000, factorial(30)
	end

	def test_factorial_3
		assert_equal 1124000727777607680000, factorial(22)
	end

	def test_factorial_4
		assert_equal 355687428096000, factorial(17)
	end
	
	def test_factorial_5
		assert_equal 362880, factorial(9)
	end
end