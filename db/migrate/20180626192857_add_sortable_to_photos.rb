class AddSortableToPhotos < ActiveRecord::Migration[5.1]
  def change
  	add_column :photos, :sort, :integer, default: 0
  end
end
