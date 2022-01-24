# frozen_string_literal: true

# trad = 'Cherry'.gsub(/[aeiou].*$/,"").length

def phonem(word)
  if word[0, 2].downcase == "qu"
    "qu"
  else
    word.downcase.split(/([aeiou].*)/).first
  end
end

# puts phonem('Cherry')
# puts phonem('Apple')
# puts phonem('quiet')
# puts phonem('tHREE')

puts "Apple"[-1, 0]
puts "Three"[-1, 3]
