class AddStateToProperty < ActiveRecord::Migration[5.1]
  def change
  	add_reference :properties, :state, foreign_key: true
  end
end
