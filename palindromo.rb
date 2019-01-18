print "Ingresa una palabra: "
palabra = gets.chomp

def es_palindromo?(palabra)
	palabra == palabra.reverse
end

puts "La palabra #{palabra} #{'NO ' unless es_palindromo?(palabra)}es palindroma"

puts es_palindromo?("abalaba")==true
puts es_palindromo?("ana")==true
puts es_palindromo?("salas")==true
puts es_palindromo?("andres")==false
puts es_palindromo?("somos")==true

