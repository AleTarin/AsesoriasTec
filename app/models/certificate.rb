class Certificate < ActiveRecord::Base
  belongs_to :subject,foreign_key:"subject_id"
  belongs_to :asesor, foreign_key:"asesor_id"
end
