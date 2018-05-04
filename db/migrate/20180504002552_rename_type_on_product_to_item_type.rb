class RenameTypeOnProductToItemType < ActiveRecord::Migration[5.1]
  def change
    rename_column :products , :type, :item_type
  end
end
