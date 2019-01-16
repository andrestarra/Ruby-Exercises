require "prime"

# def es_primo?(x)
#     div = 0
#     resp = false
#     1.upto(x) do |i| 
#         if x % i == 0 
#             div += 1
#         end
#     end
#     if div == 2
#         resp = true
#     end
#     resp
# end

# def primo_10001
#     cant = 0
#     primo = 1
#     while cant < 100001
#         if es_primo?(primo)
#             cant += 1
#         end
#         primo += 1
#     end
#     primo-1
# end

def primo_10001
    primos = Prime.first(10001)
    primos.last
end

puts "El número primo #10001 es #{primo_10001}"