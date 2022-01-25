# frozen_string_literal: true

# Step 1 : déterminer le phonem pour un mot donné. Le phonem etant défini comme l'ensemble des consonnes comsécutives au début du mot, incluant le 'u' si celui çi succède directement à cette ensemble de consonnes. Si le mot commence par une voyelle, le phonem est nil
def phonem(word)
  phonem_str = word.downcase.split(/([aeiou].*)/).first
<<<<<<< HEAD
  # ajout du 'u' au phonem s'il succéde directement au phonem
  if phonem_str.length > 0 && word[phonem_str.length-1].downcase == "q" && word[phonem_str.length].downcase == "u"
=======
  # ajout du 'q' au phonem s'il succéde directement au phonem
  if !phonem_str.empty? && word[phonem_str.length].downcase == "u"
>>>>>>> ca8b5324166edded2eb18be1e62ceed560c48c4d
    phonem_str << "u"
  end
  phonem_str
end

def translate(s)
  translation = []
  s.split.each_with_index do |word, i|
    phonem_length = phonem(word).length
    # mot commencant par une voyelle
    translation[i] = if phonem_length == 0
                       "#{word}ay"
                     else
                       # mot commencant par une ou plusieurs consonnes
                       "#{word[phonem_length..-1]}#{word[0, phonem_length]}ay"
                     end
  end
  translation.join(" ")
end
