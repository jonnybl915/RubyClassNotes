def number_of_es(str)

  letters = str.split("")
  #letters.select{ |l| l == "e" }.count
  letters.count{ |l| l == "e" }

end

str = "Where's the Beef?"
n = number_of_es str
puts "#{n} e's'"


def number_of_as(str)
  letters.count{ |l| l == "a" }
end


def letter_count(str, letter)
  str.split('').select { |c| c == letter }.count
end

def letter_frequencies(str)
  #results = {}
  #('a' .. 'z').each do |letter|
  #  results[ letter ] = letter_count(str, letter)
  #end
  #results

  counts = {}
  str.split('').each do |letter|
    if counts[letter] == nil #does not currently exist in the hash
      counts[letter] = 0
    end
    counts[letter] += 1
  end
  return counts
end

# ERROR no implicit conversion of String into Integer (TypeError) Have a hash that thinks it's a Int

n = letter_count(str, 'e')
puts "#{n} e's"

puts "#{letter_count(str, 'a')} a's"

freq = letter_frequencies(str)
puts "There are #{freq['a']} many a's"

