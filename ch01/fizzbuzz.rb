class Fizzbuzz
  def feedBack(num)
    if(num % 15 == 0)
      return "fizzbuzz"
    elsif(num % 5 == 0)
      return  "buzz"
    elsif(num % 3 == 0)
      return "fizz"
    else
      return "none"
    end
  end

  def add(a,b)
    return a+b
  end
end
