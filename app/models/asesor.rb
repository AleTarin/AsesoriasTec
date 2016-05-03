class Asesor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    

#Asociations for Asesor 
    has_many :lectures
    
    has_many :subjects
    
    has_many :students
    
    
    has_attached_file :identification, styles: { medium: "1280x720", thumb: "400x200"}
    validates_attachment_content_type :identification, content_type: /\Aimage\/.*\Z/
    
#Validations 
    validates :name, presence: true, length: { maximum: 25, message: "Maximo 25 caracteres"}
    validates :identification, presence: true
    
end
