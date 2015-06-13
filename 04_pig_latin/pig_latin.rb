def translate(sentence)

  if sentence.split(' ').size > 1

    str = sentence.split(' ')

    str.map { |word| pig(word) }.join(' ')

  else

    pig(sentence)

  end


end

def pig(word)

  vowels = %w(a o u i e y)
  consonants = ('a'..'z').to_a - vowels

  if vowels.include? word[0]

    word + "ay"

  elsif consonants.include? word[0]

    if word[0..1] == "qu"

      word.match /^qu|/i

    elsif word[0..2] == "squ"

      word.match /^[^aouiey]qu/i

    else

      word.match /^[^aouiey]{,3}/i

    end

    word = $' << $& << 'ay'

  else

    word

  end

end
