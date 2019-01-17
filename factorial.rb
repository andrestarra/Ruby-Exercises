print "Ingresa un número: "
num = gets.to_i

def factorial(x)
    x.downto(1).inject {|fact, i| fact * i}
end

resp = factorial(num)

puts "El factorial de #{num} es #{resp}"

puts factorial(10)==3628800
puts factorial(30)==265252859812191058636308480000000
puts factorial(22)==1124000727777607680000
puts factorial(17)==355687428096000
puts factorial(9)==362880