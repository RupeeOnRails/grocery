class CreateStoreGroceries < ActiveRecord::Migration[5.0]
  def change
    create_table :store_groceries do |t|
      t.integer :store_id
      t.integer :grocery_id
      t.integer :isle_id

      t.timestamps
    end
  end
end
