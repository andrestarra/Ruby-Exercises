def suma_cuadrados
    suma = 0
    1.upto(100) do |i|
        suma += i ** 2
    end
    suma
end

def cuadrado_de_suma
    suma = 0
    1.upto(100) do |i|
        suma += i
    end
    suma ** 2
end

def dif_sumas
    suma_uno = suma_cuadrados
    suma_dos = cuadrado_de_suma
    resultado = suma_dos - suma_uno
    puts "#{suma_dos} - #{suma_uno} = #{resultado}"
end

dif_sumas