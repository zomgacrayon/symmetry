require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :teachings
  has_many :students, through: :teachings
#name, email address, phone number
# validate :name, presence: true
  # validates :email, format: { :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]{2,}\z/, :message => "Wrong email!" }
  # validates :email, uniqueness: {:message => "Email is not unique!"}
  # validates :phone, format: { :with => /\d{3}-\d{3}-\d{4}/, :message => "Wrong format for numbers!"}

# def name
#    first_name = self.first_name
#     last_name = self.last_name
#     return first_name + " " + last_name
# end

end

# cheryll = Teacher.create(first_name: "Cheryll", last_name: "Wong", email_address: "cheryll@lifehackmalaysia.com", phone: "0187842962")