class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.date :date_start
      t.string :maker
      t.integer :stock

      t.timestamps
    end
  end
end
