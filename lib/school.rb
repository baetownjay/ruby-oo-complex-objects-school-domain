# code here!
require 'pry'

class School
    attr_accessor :add_student, :roster
    attr_reader :student, :grade
    @@all = []

    def initialize(school)
        @school = school
        @roster = roster = {}
    end
    

    def add_student(student, grade)
        @roster.has_key?(grade) ? @roster[grade] << student : @roster[grade] = student.split("  ")
        @@all << @roster
        #binding.pry
    end

    def self.all
        @@all
    end

    def grade(number)
        number = [number]
        targeted_students = []
        @@all.select do |target_num|
            #binding.pry
            if target_num == number
                targeted_students << target_num
                #binding.pry
            end
        end
        targeted_students
    end

end