class SimpleDiv
  def initialize

  end

  def div(num1, num2, result)
    puts "#{num1}-#{num2}-#{result}"
    if num1 < num2
      result
    else
      c = closest(num1, num2)
      result = result + 1<<c
      puts "#{num1}-#{num2}-#{c}-#{result}"

      div(num1 - (1<<c)*num2, num2, result)
    end
  end

  def closest(num1, num2)
    start = 0
    start = start + 1 while (num2 = num2 << 1) < num1
    start
  end
end

