class Student
    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(student)
        if @grade > student.grade
            true
        else
            false
        end   
    end

    protected
    attr_reader :grade
end

nile = Student.new("Nilesh",98)
jo = Student.new("John", 99)
puts jo.better_grade_than?(nile)