def largest_prime_factor(x)
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