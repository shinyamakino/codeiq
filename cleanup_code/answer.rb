mode = 'l'
variables = {}
readlines.each_with_index do |input, index|
  if index == 0
    mode = input.chomp
  else
    variable = input.chomp.split('=')
    variables[variable.first] = variable.last
  end
end

max_key = variables.keys.max_by {|key| key.size}
variables.each do |key, value|
  padding_chars = "\." * (max_key.size - key.size)

  if mode == 'l'
    puts key + padding_chars + '=' + value
  else
    puts padding_chars + key + '=' + value
  end
end
