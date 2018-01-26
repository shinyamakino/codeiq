readlines.each do |input|
  cards = input.chomp.split('')
  cards.delete('0')
  puts cards.count < 4 ? cards.min : cards.max

=begin
  # Model answer
  cards.sort
  puts cards.first == '0' ? cards[1] : cards.last
=end

end
