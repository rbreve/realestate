class AddCurrencyToProperty < ActiveRecord::Migration[5.1]
  def change
  	add_column :properties, :currency, :string
  end
end
