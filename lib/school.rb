class School

  def initialize(name)
    @name = name
    # note this instance varialbe IS the hash
    @roster = {}
  end

  def name
    @name = name
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster[grade] == nil
        @roster[grade] = []
        @roster[grade] << student
    else 
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |key, value|
      value.sort!
    end 
    @roster.to_h
  end

end