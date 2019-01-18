require "prime"

def es_primo?(x)
  div = 0
  (1..x).each do |i| 
    if x % i == 0 
      div += 1
    end
  end
  if div == 2 then return true else return false end
end

def primo_100
  arr = []
  primo , i = 1 , 1
  until arr.length == 100
    if es_primo?(i)
      arr << i
    end
    i += 1
  end
  arr.last
end

def primo_10001
    Prime.first(10001).last
end

puts "Primo #100: #{primo_100}" 

puts "El número primo #10001 es #{primo_10001}"

puts primo_100 == 541

puts primo_10001 == 104743
