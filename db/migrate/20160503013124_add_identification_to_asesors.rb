class AddIdentificationToAsesors < ActiveRecord::Migration
  def change
    add_attachment :asesors, :identification
  end
end
