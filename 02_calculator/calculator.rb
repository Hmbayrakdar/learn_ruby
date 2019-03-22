#write your code here
def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(array)
    sum = 0
    array.each do |i|
        sum += i
    end
    return sum
end

def multiply(array)
    result = 1
    array.each do |i|
        result *= i
    end
    return result
end

def power(a,b)
    return a**b
end

def factorial(a)
    result =1
    1.upto(a) do |i|
        result *= i
    end
    return result
end