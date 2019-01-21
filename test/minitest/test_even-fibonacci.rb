require "minitest/autorun"
require "../../even-fibonacci.rb"

class TestDifSumaCuadrados < Minitest::Test
  def test_fibonacci_1
    assert_equal 5, fibonacci(8).last
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

end