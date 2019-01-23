require "prime"

def primo_2
  arr = []
  i = 1
  until arr.length == 10001
    arr << i if Prime.prime?(i)
    i += 1
  end
  arr.last
end

def primo_10001
    Prime.first(10001).last
end
