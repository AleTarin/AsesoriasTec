class CreateAsesors < ActiveRecord::Migration
  def change
    create_table :asesors do |t|
      t.string :name
      t.text :link_identification

      t.timestamps null: false
    end
  end
end
