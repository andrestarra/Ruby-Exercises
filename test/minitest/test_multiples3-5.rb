require 'minitest/autorun'
require './multiples3-5.rb'

class TestMultiples35 < Minitest::Test
  def test_multiplo_3
    assert_equal true, es_multiplo_3?(6)
  end

  def test_multiplo_3_2
    assert_equal true, es_multiplo_3?(12)
  end

  def test_multiplo_3_3
  assert_equal false, es_multiplo_3?(13)
  end

  def test_multiplo_5
    assert_equal true, es_multiplo_5?(10)
  end

  def test_multiplo_5_2
    assert_equal true, es_multiplo_5?(20)
  end

  def test_multiplo_5_3
    assert_equal false, es_multiplo_5?(21)
  end
  
  def test_multiplo_3_5
    assert_equal 234168, multiplos_3_5
  end
end