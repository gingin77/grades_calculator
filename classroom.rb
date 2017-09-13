require 'pry'
# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.
def assignment_score(grade_hash, student, assignment_num)
  grade_hash[student][assignment_num-1]
end


# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_scores(grade_hash, assignment_num)
  just_grades = grade_hash.values.to_a
  select_assignments = just_grades.map {|grade| grade[assignment_num-1] }
  select_assignments
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)
  just_grades = grade_hash.values.to_a
  select_assignments = just_grades.map {|grade| grade[assignment_num-1] }
  sum = select_assignments.inject(:+)
  average = sum/select_assignments.length
  average
end
  # just_grades.map do |grade|
  #   new_arr.push(grade[assignment_num-1])
  #   average = select_assignments.reduce do |accumulator, x|
  #     (accumulator += x)/select_assignments.length
  #     print average
  # end
# https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
# .sum - method that can be called on an array


# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)
  # puts grade_hash.class
  # print grade_hash
  new_hash = {}
  # print grade_hash
  just_grades = grade_hash.values.to_a
  # puts "                     "
  averages = just_grades.map {|array| array.reduce(:+) / array.size }
  # print averages
  # puts "                     "
  # print grade_hash.key
  names = grade_hash.keys
  # print names
  # puts "                     "
  new_array = names.zip(averages)
  # grades = grade_hash.values.to_a
  print new_array.to_h
  # puts "                     "
  new_hash = new_array.to_h
  print new_hash.class
  new_hash
  # puts "                     "
end


# Nancy's answer:
# def averages(grade_hash)
#   new_hash={}
#   grade_hash.map do |name, grades|
#     score = 0
#     grades.each do |grade|
#       score = score + grade
#     end
#     avg = score/grades.length
#     new_hash[name] = avg
#   end
#   print new_hash
# return new_hash
# end

# ref: https://stackoverflow.com/questions/4028329/array-to-hash-ruby
  # Just use Hash.[] with the values in the array. For example:
  # arr = [1,2,3,4]
  # Hash[*arr] #=> gives {1 => 2, 3 => 4}

#   https://stackoverflow.com/questions/17492018/average-of-several-ruby-arrays
#   a = [1, 2, 3, 4]
#   b = [2, 3, 4, 5]
#   c = [3, 4, 5, 6]
#
# a.zip(b,c)
#    # [[1, 2, 3], [2, 3, 4], [3, 4, 5], [4, 5, 6]]
# .map {|array| array.reduce(:+) / array.size }
#    # => [ 2,3,4,5]

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F

    #From test: assert_equal "A", letter_grade(1000)

def letter_grade(score)
  if score >= 90
    "A"
  elsif score < 90
    case score
    when 0...59.999
      "F"
    when 60...69.999
      "D"
    when 70...79.999
      "C"
    when 80...89.999
      "B"
    end
  end
end

# See alt answer here: https://www.codecademy.com/en/forum_questions/500d1427dfc0910002010e74

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
  #
end

# Return the average for the entire class.
def class_average(grade_hash)
end

# Return an array of the top `number_of_students` students.
def top_students(grade_hash, number_of_students)
end

# cheat sheet for array operations: /Users/ginniehench/Desktop/Ruby/classroom_calculator/starter_files/classroom.rb
