class RemoveProductId < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :product_id, :integer
    remove_column :orders, :user_id, :integer
  end
end
