class AddBudgetToShoppingLists < ActiveRecord::Migration[6.0]
  def change
    add_column :shopping_lists, :budget, :float, default: 0.0
  end
end
