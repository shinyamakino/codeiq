inputs = [gets.chomp]
inputs += gets.split(/\s+/)

output = 'no'
inputs.each_with_index do |num, idx|
  sub = (256 - num.to_i).to_s
  next if inputs.index(sub) == idx
  if inputs.include?(sub) == true
    output = 'yes'
    break
  end
end

puts output
