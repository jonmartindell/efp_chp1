
def prompt
  print "What is your name? "
  STDIN.gets.chomp
end

def output
  "Hello #{prompt} nice to meet you!"
end

puts output
