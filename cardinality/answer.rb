data = Array.new
readlines.each do |input|
  values = input.chomp.split(',')
  values.each_with_index do |value, index|
    data[index] = Array(data[index]).push(value)
  end
end

result = Array.new
data.each do |row|
  row.shift
  result.push(row.uniq.size)
end
puts result.join(',')
