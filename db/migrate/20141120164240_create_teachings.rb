require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachings< ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachings do |t|
      t.belongs_to :teacher
      t.belongs_to :student
      t.integer :student_id, :teacher_id
    end
  end
end
