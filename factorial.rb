print "Ingresa un número: "
num = gets.to_i

def factorial(x)
    fact = 1
    x.downto(1) do |i|
        fact = fact * i
    end
    fact
end

resp = factorial(num)

puts "El factorial de #{num} es #{resp}"