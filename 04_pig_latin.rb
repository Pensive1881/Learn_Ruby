def translate(string)
  words = string.split(' ')
  i = 0
  while i < words.size
    letters = words[i].split('')
    cons = ""
    letters.each do |i|
      if cons[-1] == 'q' && i == 'u'
        cons << i
      end
      break if i =~ /[aeiou]/
      cons << i
    end
    words[i] = letters.join << cons << 'ay'
    words[i] = words[i].reverse.chomp(cons.reverse).reverse
    i += 1
  end
  words.join(' ')
end
