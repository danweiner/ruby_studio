class Calculator
  def initialize(number_1, number_2)
    @number_1 = number_1
    @number_2 = number_2
  end
  def add 
    @number_1 + @number_2
  end
  def subtract
    @number_1 - @number_2
  end
end

calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract