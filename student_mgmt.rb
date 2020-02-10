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
require_relative 'helpers'
include Helpers

require_relative 'student_utils'
include Student_Utils

roster = Roster.new

while true
  first, last, middle, address, email, phone = get_student_info
  student = Student.new first, last, middle, address, email, phone

  student.print_info()

  if confirm('Is this information correct? (Y/n) ')
    roster.add student

    if confirm('Would you like to add another student to the roster? (Y/n) ')
      redo
    else
      roster.summarize
      break
    end
  end
end
