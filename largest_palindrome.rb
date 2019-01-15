def largest_palindrome
    resultado = 0
    n_uno = 0
    n_dos = 0
    aux = 0
    999.downto(100) do |i|
        999.downto(100) do |j|
            aux = i * j
            if aux.to_s == aux.to_s.reverse && aux > resultado
                resultado = aux
                n_uno = i
                n_dos = j
            end
        end
    end
    puts "Mayor número palindromo resultado de un producto de dos números de tres digitos: #{n_uno} * #{n_dos} : #{resultado}"
end

largest_palindrome