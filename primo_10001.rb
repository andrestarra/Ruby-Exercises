require "prime"

def primo_2
  arr = []
  primo , i = 1 , 1
  until arr.length == 10001
    arr << i if Prime.prime?(i)
    i += 1
  end
  arr.last
end

def primo_10001
    Prime.first(10001).last
end

puts "Primo #10001: #{primo_2}" 

puts "El número primo #10001 es #{primo_10001}"

puts primo_2 == 104743

puts primo_10001 == 104743
