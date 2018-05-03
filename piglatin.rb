# turns user input into Pig Latin !
class PigLatin
  # Prompts user for input
  print "Input String: "
  user_input = gets.chomp
  length = user_input.length

  # ensures valid length of input, if not re-prompts
  while length < 3
    puts "Input Longer String (longer than two letters!):"
    user_input = gets.chomp
    length = user_input.length
  end

  user_input.downcase!
  # creates the beginning and ending of statement
  ending = "-" << user_input[0] << "ay"
  beginning = user_input[1..user_input.length]

  # concats the beginning and ending
  pig_latin = beginning << ending

  # prints the full statement to the user
  puts "ig-pay atin-lay: #{pig_latin}!"
end
