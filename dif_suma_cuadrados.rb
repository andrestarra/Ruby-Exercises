require "minitest/autorun"

def suma_cuadrados
  (1..100).inject { |sum, n| sum + (n ** 2) }
end

def cuadrado_de_suma
  suma = (1..100).reduce(:+)
  suma ** 2
end

def dif_sumas
  cuadrado_de_suma - suma_cuadrados
end

puts "#{suma_cuadrados} - #{cuadrado_de_suma} = #{dif_sumas}"

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