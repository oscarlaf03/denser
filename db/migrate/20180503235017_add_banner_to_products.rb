class AddBannerToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :banner, :string
    add_column :products, :main_photo, :string

  end
end
