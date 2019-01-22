print "Ingresa un número: "
num = gets.to_i

def factorial(x)
  x.downto(1).inject { |fact, i| fact * i }
end

resp = factorial(num)

puts "El factorial de #{num} es #{resp}"