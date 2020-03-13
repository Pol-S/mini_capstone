class CreateRemoveImageUrlfromProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :remove_image_urlfrom_products do |t|
      remove_column :products, :image_url, :string

      t.timestamps
    end
  end
end
