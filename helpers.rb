module Helpers

  def get_student_info
    print 'Please enter the student\'s first namne. '
    first = gets.chomp

    print 'Please enter the student\'s last name. '
    last = gets.chomp

    print 'Please enter the student\'s middle initial. '
    middle = gets.chomp

    print 'Please enter the student\'s address. '
    address = gets.chomp

    print 'Please enter the student\'s email. '
    email = gets.chomp

    print 'Please enter the student\'s phone number. '
    phone = gets.chomp

    return [first, last, middle, address, email, phone]
  end

  def create_student(**student)
    # student hash with default value 'N/A'
    _student = Hash.new('N/A')
    _student.each { | key | h[key] = nil }

    # TODO do this interatively
    # Build hash with values from **student.
    _student = student
    return _student
  end

  def print_seperator(repetitions = 18)
    puts '-*-' * repetitions
  end

  def print_student(student)
    puts 'You\'ve entered:'

    print_seperator

    student.each { | key, value | puts "The students\'s #{key} is #{value}." }

    print_seperator
  end

  def confirm(message)
    print "#{message}"
    confirmation = gets.chomp.downcase == 'y'
  end

  def print_summary(students)
    puts 'You\'ve entered the following profiles:'

    print_seperator

    students.each { | student | print_student student }

    print_seperator
  end
end
