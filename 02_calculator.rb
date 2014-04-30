def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  if array != []
    array.inject(0) {|x,y|x + y}
  else
    0
  end
end

def multiply(x,y)
  x * y
end

def power(x,y)
  answer = x
  (y - 1).times {answer *= x}
  answer
end

def factorial(x)
  if x < 2
    return 1
  end
  answer = x
  while x > 1
    x -= 1
    answer *= x
  end
  answer
end
