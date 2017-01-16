#1. Using a string

# File.write(
#         #write file path here
#         #not super useful...
# )

def path(p)
  "/Users/jblack/RubymineProjects/TIY-BoomTown/class-notes/1/#{p}"
end

# File is of the Type I/O object

# 2. Using puts

f = File.open path('example2.rb'), 'w'
f.puts 'First'
f.puts 'Second'

f.close

# Better Syntax is as follows inside of a block of code

File.open(path('example1.rb'), 'w') do |f|
  f.puts 'In a block'
end
i = 1
f = File.open(path('example2.rb'), 'r') do |f|
  # result = f.gets
  # puts "the result of our read is: #{result}"
  loop do
    line = f.gets
    if line == nil
      break
    end
    puts "#{i}.  #{line}"
    i += 1
  end
end

  # result = f.gets
  # puts "the result of our read is: #{result}"
  #
  # result = f.gets
  # puts "the result of our read is: #{result}"

i = 1
File.foreach(path('example2.rb')) do |line|
  puts "#{i}.  #{line}"
  i += 1
end






