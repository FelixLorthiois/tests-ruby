#trad = 'Cherry'.gsub(/[aeiou].*$/,"").length


def phonem(word)
  if word[0,2].downcase == "qu"
    return "qu"
  else
    return word.downcase.split(/([aeiou].*)/).first
  end
end

#puts phonem('Cherry')
#puts phonem('Apple')
#puts phonem('quiet')
#puts phonem('tHREE')

puts "Apple"[-1,0]
puts "Three"[-1,3]
