class AddDateLectureToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :date_lecture, :string
  end
end
