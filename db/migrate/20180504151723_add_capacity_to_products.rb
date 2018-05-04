class AddCapacityToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :capacity, :string
  end
end
