def es_multiplo_3?(x)
    resp = false
    residuo = x%3
    if residuo == 0
        resp = true
    end
    return resp
end

def es_multiplo_5?(x)
    resp = false
    residuo = x%5
    if residuo == 0
        resp = true
    end
    return resp
end

# puts es_multiplo_3?(3)
# puts es_multiplo_3?(6)
# puts es_multiplo_3?(7)

# puts es_multiplo_5?(5)
# puts es_multiplo_5?(10)
# puts es_multiplo_5?(11)

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
    puts multiplos
    puts "La suma total de los números múltiplos de 3 y 5 de 1 hasta 1000 es igual a: #{suma}"
end

multiplos_3_5