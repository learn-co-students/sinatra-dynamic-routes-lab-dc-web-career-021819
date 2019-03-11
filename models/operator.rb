class Operator
  attr_reader :operator, :number1, :number2

  def initialize(operator, number1, number2)
    @operator, @number1, @number2 = operator, number1.to_i, number2.to_i
  end

  def operate
    case operator
    when "add"
      number1 + number2
    when "subtract"
      number1 - number2
    when "multiply"
      number1 * number2
    when "divide"
      number1 / number2
    end
  end

end
