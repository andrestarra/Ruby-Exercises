require 'minitest/autorun'

def es_multiplo_3?(x)
  x % 3 == 0
end

def es_multiplo_5?(x)
  x % 5 == 0
end

def multiplos_3_5
  multiplos = []
  suma = 0
  1.upto(1000) do |i|
    if es_multiplo_3?(i)
      multiplos << i
    elsif es_multiplo_5?(i)
      multiplos << i
    end
  end
  multiplos.each do |multiplo|
    suma += multiplo.to_i
  end
  suma
end

puts "La suma total de los números múltiplos de 3 y 5 de 1 hasta 1000 es igual a: #{multiplos_3_5}"

class TestUno < Minitest::Test
  def test_multiplo_3
    assert_equal true, es_multiplo_3?(6)
  end

  def test_multiplo_3_2
    assert_equal true, es_multiplo_3?(12)
  end

  def test_multiplo_5
    assert_equal true, es_multiplo_5?(10)
  end

  def test_multiplo_5_2
    assert_equal true, es_multiplo_5?(20)
  end
  
  def test_multiplo_3_5
    assert_equal 234168, multiplos_3_5
  end
end