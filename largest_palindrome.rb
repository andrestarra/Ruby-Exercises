def largest_palindrome
  resultado = 0
  999.downto(100) do |i|
    999.downto(100) do |j|
    aux = i * j
      if aux.to_s == aux.to_s.reverse && aux > resultado
        resultado = aux.to_i
      end
    end
  end
  resultado
end