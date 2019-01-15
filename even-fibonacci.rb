def suma_fibonacci_pares
    a = 1
    b = 1
    suma_pares = 0
    while b < 4000000
        if b % 2 == 0
            suma_pares += b
        end
        c = a + b
        a = b
        b = c
    end
    puts "La suma de los números pares de la sucesión de fibonacci hasta 4000000 es: #{suma_pares}"
end

suma_fibonacci_pares