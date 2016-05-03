class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student
      t.references :lecture, index: true, foreign_key: true
      t.integer :valoration
      t.text :body

      t.timestamps null: false
    end
  end
end
