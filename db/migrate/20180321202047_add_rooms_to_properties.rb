class AddRoomsToProperties < ActiveRecord::Migration[5.1]
  def change
  	add_column :properties, :rooms, :integer 
  	add_column :properties, :garages, :integer 
  end
end
