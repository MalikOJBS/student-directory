def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while name is not empty, repeat this code
  while !name.empty? do
      #add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
      #get another name from the user
      name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  puts "Enter an initial to search for"
  character = gets.chomp
  array_iterator = 0
  
  while array_iterator < names.length do 
    #names.each.with_index(1) do |student, index|
    initial = names[array_iterator][:name].chr
    if names[array_iterator][:name].length < 12  && initial.downcase == character.downcase
      puts "#{array_iterator + 1}. #{names[array_iterator][:name]} (#{names[array_iterator][:cohort]} cohort)"
    end
    array_iterator += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


students = input_students

print_header
print(students)
print_footer(students)
