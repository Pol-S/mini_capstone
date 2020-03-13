class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :description
      t.string :price
      t.string :integer

      t.timestamps
    end
  end
end
