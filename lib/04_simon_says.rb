def echo(s)
  return s
end

def shout(s)
  return s.upcase
end

def repeat( s , n=2 )
  return ("#{s} " * n)[0...-1]
end

def start_of_word( s , n)
  return s[0..n-1]
end

def first_word(s)
  return s.split[0]
end

def titleize(s)
  little_words = ["and" , "the" , "or" , "at" , "for"]  #to be completed
  title = s.split.map.each {|i| (little_words.include? i)? i :  i.capitalize()}.join(" ")
  title[0] = title[0].capitalize                        # capitalize la première lettre du titre
  return title
end