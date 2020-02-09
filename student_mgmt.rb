#   Implement a command-line student management prototype in Ruby.
#
#   The program should prompt the user for a student's first name; last name;
#   middle initial; physical address; email address; and phone number.
#
#   After each prompt, the program should wait for the user's input.
#
#   Once the user has entered every piece of information, the program should
#   print it all back to the console, and prompt the user to enter Y if the
#   information is correct, or any other key otherwise.
#
#   For now, you should collect the user's response--i.e., y or otherwise--but
#   don't worry about handling it. We'll get to that shortly.
#
###############################################################################


students = Array.new
begin

  student = Hash.new

  print "Enter student\'s name. "
  student[:first_name] = gets.chomp

  print "Enter student\'s last name. "
  student[:last_name] = gets.chomp

  print "Enter student\'s address. "
  student[:address] = gets.chomp

  print "Enter student\'s phone number: "
  student[:phone] = gets.chomp

  print "Enter student\'s email address: "
  student[:email] = gets.chomp

  puts "-*-" * 18
  puts "Student Info: "
  student.each do | key, value |
    puts "The student\'s #{key} is #{value}."
  end

  puts "-*-" * 18

  print "Is this information correct? y or n? "

  if gets.chomp.downcase == "y"
    students.push student
    print "Would you like to enter another student? (y/n) "
    if gets.chomp.downcase == "y"
      next
    else
      puts "You\'ve entered the following student profiles:"
      puts '-' * 18

      students.each do | student |
        student.each do | key, value |
          puts "The sudent\'s #{key} is #{value}."
        end
      end

      puts '-' * 18

      break
    end
  end
end while true
