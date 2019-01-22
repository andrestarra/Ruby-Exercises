require "minitest/autorun"
require "./dif_suma_cuadrados"

class TestDifSumaCuadrados < Minitest::Test
  def test_suma_cuadrados
    assert_equal 338350, suma_cuadrados
  end

  def test_cuadrado_suma
    assert_equal 25502500, cuadrado_de_suma
  end

  def test_dif_sumas
    assert_equal 25164150, dif_sumas
  end
end