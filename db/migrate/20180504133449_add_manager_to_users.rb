class AddManagerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manager, :boolean, null: false, default: false
  end
end
