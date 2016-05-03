class Subject < ActiveRecord::Base
    has_many :lectures
    has_many :asesors
    
    validates :name, presence: true
end
