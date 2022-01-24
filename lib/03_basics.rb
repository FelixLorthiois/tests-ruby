def who_is_bigger (a,b,c)
  array = [a,b,c]
  if array.any?{ |e| e.nil? } 
    return "nil detected"
  else
    if a==array.max
      return "a is bigger"
    end
    if b==array.max
      return "b is bigger"
    end
    if c==array.max
      return "c is bigger"
    end
  end
end

def reverse_upcase_noLTA (string)
  return string.reverse.upcase.delete('LTA')
end

def array_42 (array)
  return array.include?(42)
end

# The magic_array function takes an array of number or an array of
  # array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  # BONUS : You can do this in one line less than 55 chars
def magic_array(array)
  return  array.flatten.sort.collect { |n| n * 2 }.reject{|n| n%3 == 0}.uniq.sort
end