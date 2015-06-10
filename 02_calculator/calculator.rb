def add(a,b)

  a + b

end

def subtract(a,b)

  a - b

end

def sum(numbers = [])

  sum = 0

  numbers.each { |n| sum += n }

  sum

end

def multiply(*args)

  sum = 0

  args.each { |n| sum == 0 ? sum = n :  sum *= n}

  sum

end

def power(a,b)

  a ** b

end

def factorial(n)

  if n <= 1

    1

  else

    (1..n).inject { |product, n| product * n }

  end



end