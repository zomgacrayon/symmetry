require_relative '../../db/config'

class Teaching < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
end
