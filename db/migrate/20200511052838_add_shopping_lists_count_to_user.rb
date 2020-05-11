class AddShoppingListsCountToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :shopping_lists_count, :integer, default: 0
  end
end
