def factorial(x)
  x.downto(1).inject { |fact, i| fact * i }
end