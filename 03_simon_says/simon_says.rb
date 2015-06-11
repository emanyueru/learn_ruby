def echo(str)

  str

end

def shout(str)

  str.upcase

end

def repeat(str, n=2)

  n.times.collect { str }.join(' ')


end


def start_of_word(str, n=1)

  str[0..n-1]

end

def first_word(str)

  str = str.split(' ')

  str[0]

end

def titleize(str)

  words_to_ignore = ["and", "to", "in", "on", "or", "the", "over"]

  if (str.include? ' ')

  new_string = str.split(' ').map do |i|

  if ! words_to_ignore.include? i
    i.capitalize!
  else
    i
  end

  end

  new_string[0].capitalize!

  new_string.join(' ')

  else

    str.capitalize!

  end

end