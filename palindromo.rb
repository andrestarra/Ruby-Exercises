print "Ingresa una palabra: "
palabra = gets.chomp

def es_palindromo?(palabra)
    if palabra == palabra.reverse
        puts "La palabra #{palabra} es palíndromo."
    else
        puts "La palabra #{palabra} NO es palíndromo"
    end
end

es_palindromo?(palabra)