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
  array_of_grade_arrays = grade_hash.values.to_a
  # print array_of_grade_arrays
  index_seclect_array = array_of_grade_arrays.map {|grade| grade[assignment_num-1] }
  index_seclect_array
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
# def averages(grade_hash)
#     new_hash={}
#     names = grade_hash.keys
#     puts names
#     names_and_grades =  grade_hash.inspect
#     puts names_and_grades
#     puts grade_hash
# end




# def average
#     grade_array.inject(0.0) do |sum, el|
#      sum + el
#    end
#    def mean
#      sum/size
#    end
#  end
#  new_hash

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
# return new_hash
# end

# { name: "Sushi", price: 10 }.each do |key, value|
#   puts "the key is #{key}, the value is #{value}"
# end

# arr = [5, 6, 7, 8]
# arr.inject(0.0) { |sum, el| sum + el } / arr.size
# => 6.5

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
end

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
end

# Return the average for the entire class.
def class_average(grade_hash)
end

# Return an array of the top `number_of_students` students.
def top_students(grade_hash, number_of_students)
end
