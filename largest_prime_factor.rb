def largest_prime_factor (x)
  primos = []
  aux = x
  until aux == 1
    actual , i = 0 , 2
    while actual == 0
      if aux % i == 0
        actual = i
        primos << actual.to_i
      else
        i += 1
      end
    end
    aux = aux / actual
  end
  primos.max
end

puts "El mayor factor primo de 600851475143 es #{largest_prime_factor(600851475143)}"

puts largest_prime_factor(3960) == 11
puts largest_prime_factor(24) == 3
puts largest_prime_factor(180) == 5