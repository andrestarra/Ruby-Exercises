def suma_cuadrados
    (1..100).inject {|sum, n| sum + (n ** 2) }
end

def cuadrado_de_suma
    suma = (1..100).reduce(:+)
    suma ** 2
end

def dif_sumas
    cuadrado_de_suma - suma_cuadrados
end

puts "#{suma_cuadrados} - #{cuadrado_de_suma} = #{dif_sumas}"