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

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.

def averages(grade_hash)
  new_hash = {}
  namesArray = grade_hash.keys
  just_gradesArr = grade_hash.values.to_a
  averagesArr = just_gradesArr.map do |array|
    array.reduce(:+) / array.size
  end
  new_hash = namesArray.zip(averagesArr).to_h
  new_hash
end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
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

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
  num_avg_hash = grade_hash.transform_values{|n| n.reduce(0,:+)/n.length}
  letter_hash = num_avg_hash.transform_values do|l|
    if l >= 90
      "A"
    elsif l < 90
      case l
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
end


def class_average(grade_hash)
  total = grade_hash.values.flatten
  total.sum/total.length
end

def top_students(grade_hash, number_of_students)
  num_avg_hash = grade_hash.transform_values{|n| n.sum/n.length}
  num_avg_hash = num_avg_hash.sort_by {|rank| rank[1] }.reverse
  num_avg_hash.take(number_of_students).collect{|students| students[0] }
end
