inputs = gets.split(/\s+/).map do |input|
  value = input.split('/')
  Rational(value[0], value[1])
end

result = inputs.inject(:+)
puts result.numerator.to_s + '/' + result.denominator.to_s
