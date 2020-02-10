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
require './helpers'
include Helpers

students = Array.new

while true
  # Unpacking and assigning info.
  first, last, middle, address, email, phone = get_student_info
  student = create_student(first_name: first,
                           last_name: last,
                           middle_inital: middle,
                           address: address,
                           email: email,
                           phone: phone)
  print_student student

  if confirm('Is this information correct (Y/n) ')
    # Append student to students array.
    students << student

    if confirm ('Would you like to add another student\'s information (Y/n)? ')
      redo
    else
      print print_summary students
      break
    end
  end
end
