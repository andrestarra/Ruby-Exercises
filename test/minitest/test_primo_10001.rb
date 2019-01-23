require "minitest/autorun"
require "./primo_10001.rb"

class TestPrime_10001 < Minitest::Test
  def test_primo_2
    assert_equal 104743, primo_2
  end

  def test_primo_10001
    assert_equal 104743, primo_10001
  end

  def test_primo_2_2
    refute_equal !104743, primo_2
  end

  def test_primo_10001_2
    refute_equal !104743, primo_10001
  end
end