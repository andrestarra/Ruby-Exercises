def largest_prime_factor (x)
    # aux = x - 1
    # lpf = 0
    primos = []
    aux = x
    until aux == 1
        actual = 0
        i = 2
        while  actual == 0
            if aux % i == 0
                actual = i
                primos << actual.to_i
            else
                i += 1
            end
        end
        aux = aux / actual
    end
    puts primos.max
end

largest_prime_factor (600851475143)