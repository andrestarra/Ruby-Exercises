require "minitest/autorun"
require "./even-fibonacci.rb"

class TestEvenFibonacci < Minitest::Test
  def test_fibonacci_1
    array = [1, 1, 2, 3, 5]
    assert_equal array, fibonacci(8)
  end

  def test_fibonacci_2
    assert_equal 610, fibonacci(987).last
  end

  def test_fibonacci_3
    assert_equal 144, fibonacci(233).last
  end

  def test_even_fibonacci
    assert_equal 4613732, suma_fibonacci_pares
  end

  def test_even_fibonacci_2
    refute_equal !46313732, suma_fibonacci_pares
  end
end