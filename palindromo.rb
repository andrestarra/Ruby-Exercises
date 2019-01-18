print "Ingresa una palabra: "
palabra = gets.chomp

def es_palindromo?(palabra)
	if palabra == palabra.reverse then return true else return false end
end

str = "La palabra #{palabra}"
if es_palindromo?(palabra) then puts "#{str} es palindromo" else puts "#{str} NO es palindromo" end

puts es_palindromo?("abalaba")==true
puts es_palindromo?("ana")==true
puts es_palindromo?("salas")==true
puts es_palindromo?("andres")==false
puts es_palindromo?("somos")==true

