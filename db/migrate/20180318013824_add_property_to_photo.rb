class AddPropertyToPhoto < ActiveRecord::Migration[5.1]
  def change
  	add_reference :photos, :property, index: true
  end
end
