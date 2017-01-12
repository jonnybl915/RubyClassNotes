#1/11

# 1. print the numbers 1 to 100 using each

#!! look up the ".." function

range = 1 .. 100
range.each do |n|
  puts n
end

#2. Fizz


i = 0
while i <= 100
  puts (i % 3 == 0 && i != 0) ? 'Fizz' : i
  i += 1
end

# in another method
ns = 1 .. 100
ns.each do |n|
  if n % 3 == 0
  puts 'Fizz'
    else
    puts n
  end
end


#3. People

people = [

    {
              name: 'Tom',
          role: 'iOS'
  },
      {
              name: 'Kelly',
          role: 'Frontend'
  },
      {
              name: 'James',
          role: 'Ruby'
  },
      {
              name: 'Su',
          role: 'CD'
  }
]

# populate an array of names from the people above: (should be solved by MAP)
#what does select do? it takes out an individual piece

names = people.map { |person| person[:name]}
#puts names;

# longer method

namesArray = []
people.each { |person|
  namesArray.push(person[:name]);
  }
#puts namesArray


#1/12

#1 how many of thes words end with an x?
#n.b. they currently all end in "\n"

words = File.readlines "/usr/share/dict/words"
puts words.count

wordsThatEndInX = []

words.each do |word|

  if word[-2] == "x"
  #preferable --- word.chomp.end_with? 'x'
  wordsThatEndInX.push(word)
  end
end
puts wordsThatEndInX.count

#using a select statement
x_words = words.select do |word|
  word.chomp.end_with? 'x'

end
puts x_words.count

#2 Class practice
# Write a person class where the following is runnable code

class Person

  def initialize(firstName, lastName)
    @firstName = firstName
    @lastName = lastName
  end

  def greet
    puts "Hello, #{@firstName} #{@lastName}!"
  end

end

p = Person.new("Jon", "Black")

puts p.greet #=> should output "hello, Jon Black!"

