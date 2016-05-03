class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates, id: false do |t|
      t.belongs_to :subject, index: true
      t.belongs_to :asesor, index: true
      t.string :document

      t.timestamps null: false
    end
  end
end
