def es_multiplo_3?(x)
  x % 3 == 0
end

def es_multiplo_5?(x)
  x % 5 == 0
end

def multiplos_3_5
  multiplos = []
  suma = 0
  1.upto(1000) do |i|
    if es_multiplo_3?(i)
      multiplos << i
    elsif es_multiplo_5?(i)
      multiplos << i
    end
  end
  multiplos.each do |multiplo|
    suma += multiplo.to_i
  end
  suma
end