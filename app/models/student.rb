class Student < ActiveRecord::Base
  belongs_to :lecture
  
  validates :student, presence: true
  validates :valoration, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10}
end
