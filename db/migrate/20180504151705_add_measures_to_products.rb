class AddMeasuresToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :measures, :string
  end
end
