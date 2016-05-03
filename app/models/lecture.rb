class Lecture < ActiveRecord::Base
    
    belongs_to :asesor, foreign_key: "asesor_id"
    
    belongs_to :subject, foreign_key: "subject_id"
    
    has_many :students, through: :comments
    
    has_many :students
    
    #Validations 
    validates :hour_start, presence: true
    validates :place, presence: true
end
