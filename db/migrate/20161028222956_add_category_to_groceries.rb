class AddCategoryToGroceries < ActiveRecord::Migration[5.0]
  def change
    add_column :groceries, :category, :string
  end
end
