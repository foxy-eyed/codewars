# https://www.codewars.com/kata/fluent-calculator

class Calc
  DIGITS = { zero: 0, one: 1, two: 2, three: 3, four: 4, 
             five: 5, six: 6, seven: 7, eight: 8, nine: 9 }

  OPERATORS = { plus: :+, minus: :-, times: :*, divided_by: :/ }

  def initialize
    @operands = []
  end

  DIGITS.each do |method, val|
    define_method(method) do
      @operands << val
      return self if @operator.nil? || @operands.size < 2
      @operands.reduce(&@operator)
    end
  end

  OPERATORS.each do |method, operator|
    define_method(method) do
      @operator = operator
      self
    end
  end
end
