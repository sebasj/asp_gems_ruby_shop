class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.float :price
      t.references :product
      t.references :order

      t.timestamps
    end

    add_index :line_items, :product_id
    add_index :line_items, :order_id
  end
end
