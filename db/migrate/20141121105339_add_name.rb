require_relative '../config'
require_relative '../../app/models/student'

# this is where you should use an ActiveRecord migration to

class AddName < ActiveRecord::Migration
    def up
    # # HINT: checkout ActiveRecord::Migration.create_table
    add_column :students, :name, :string
    # Student.all.each do |student|
    # student.name = student.first_name + " " + student.last_name
    # student.save
    end
end