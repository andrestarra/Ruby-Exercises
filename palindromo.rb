print "Ingresa una palabra: "
palabra = gets.chomp

def es_palindromo?(palabra)
	palabra == palabra.reverse
end

puts "La palabra #{palabra} #{'NO ' unless es_palindromo?(palabra)}es palindroma"
