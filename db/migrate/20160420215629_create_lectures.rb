class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.time :hour_end
      t.time :hour_start, null: false
      t.string :place, null: false
      t.string :date_lecture
      t.integer :cost_per_hour
      
      t.belongs_to :asesor, index: true
      t.belongs_to :subject, index: true

      t.timestamps null: false
    end
  end
end
 