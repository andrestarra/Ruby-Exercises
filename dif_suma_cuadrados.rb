def dif_suma_cuadrados
    suma_uno = 0
    suma_dos = 0
    resultado = 0
    1.upto(100) do |i|
        suma_uno += i ** 2
        suma_dos += i
    end
    suma_dos = suma_dos ** 2
    resultado = suma_dos - suma_uno
    puts "#{suma_dos} - #{suma_uno} = #{resultado}"
end

dif_suma_cuadrados