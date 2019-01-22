def fibonacci(limite)
    a , b , c = 1 , 1 , 0 
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