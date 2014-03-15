class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :status
      t.integer :payment
      t.text :address
      t.string :poblation
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
