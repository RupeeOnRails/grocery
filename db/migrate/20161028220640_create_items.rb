class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :grocery_id
      t.integer :quantity
      t.boolean :checked

      t.timestamps
    end
  end
end
