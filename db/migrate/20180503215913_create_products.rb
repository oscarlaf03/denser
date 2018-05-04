class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :code
      t.integer :price
      t.string :category
      t.string :type
      t.string :color, array: true, default: []

      t.timestamps
    end
  end
end
