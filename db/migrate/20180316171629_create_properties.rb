class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.references :city, foreign_key: true
      t.references :neighborhood, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
