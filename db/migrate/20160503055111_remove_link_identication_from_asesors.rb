class RemoveLinkIdenticationFromAsesors < ActiveRecord::Migration
  def change
    remove_column :asesors, :link_identification, :string
  end
end
