def fibonacci(limite)
    a = 1
    b = 1
    fib = [a]
    while b < limite
        fib << b
        c = a + b
        a = b
        b = c
    end
    fib
end

def suma_fibonacci_pares
    fib = fibonacci(4000000)
    pares = fib.select {|f| f % 2 == 0}
    pares.sum
end

puts "La suma de los números pares de la sucesión de fibonacci hasta 4000000 es: #{suma_fibonacci_pares}"

puts suma_fibonacci_pares == 4613732