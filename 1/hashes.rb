
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

counts = letter_frequencies(File.read './warmups.rb')
counts.delete(" ")
puts counts

# how many different letters are there?

puts "Different Letters"

key_count = 0
counts.each do |_|
  key_count += 1
end

puts key_count
puts counts.length

puts "Total Length"

total = 0
counts.each do |key, value| # when iterating(eaching) through a hash you need two arguments!!
  total += value;

end
puts total
puts counts.values.reduce(:+) #double check Reduce method!

puts "How many letters show up an even number of times?"

total = 0
counts.each do |key, value|
  if value.even?
    total += 1
  end
end
puts total
puts counts.values.select{|v| v.even? }.length

evens = counts.select {|k, v| v.even?}
puts evens
puts evens.length

puts "Most times a letter shows up"
puts counts.values.max
puts counts.sort_by { |k,v| -v }.to_s
puts counts.max_by { |k,v| v}

puts counts.max_by do |k, v|

end