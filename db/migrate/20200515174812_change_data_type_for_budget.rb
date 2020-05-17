class ChangeDataTypeForBudget < ActiveRecord::Migration[6.0]
  def change
    remove_column :shopping_lists, :budget, :float, default: 0.0
    add_column :shopping_lists, :budget, :float
  end
end
