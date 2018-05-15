class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster.has_key?(grade) ? roster[grade] << student : roster[grade] = [student]
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.values.each {|students| students.sort!}
    roster
  end
end
