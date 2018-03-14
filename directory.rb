def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the sudent hash to the array
    puts "Hobby?"
    hobby = gets.chomp
    puts "Country of birth?"
    country_birth = gets.chomp
    puts "Height?"
    height = gets.chomp
    puts "Cohort?"
    cohort = gets.chomp
    cohort = cohort.to_sym if !cohort.empty?
    cohort = :november if cohort.empty?
    students << {name: name, hobby: hobby, country_birth: country_birth,
      height: height, cohort: cohort}
    if students.count > 1
      puts "Now we have #{students.count} students"
    elsif students.count == 1
      puts "Now we have 1 student"
    end
    #get another name from the user
    name = gets.chomp
  end
  #return array of students
  students
end
def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end
def print(students)
#  students.each do |student|
#    if student[:name].length < 12
#      puts "#{student[:name]} (#{student[:cohort]} cohort)"
#    end
#  end
  x = 0
  while x != students.count
    student = students[x]
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50)
    x += 1
  end
end
def print_footer(students)
  if students.count > 1
    puts "Overall, we have #{students.count} great students"
  elsif students.count == 1
    puts "Overall, we have 1 great student"
  end
end

#nothing will happen until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
