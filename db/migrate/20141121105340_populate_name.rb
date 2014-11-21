require_relative '../config'
require_relative '../../app/models/student'

# this is where you should use an ActiveRecord migration to

class PopulateName < ActiveRecord::Migration
    def change
      Student.all.each do |student|
      student.name = "#{student.first_name}" + " " + "#{student.last_name}"
      student.save
    end
  end
end