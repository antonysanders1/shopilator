class AddShoppinglistidToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :shopping_list_id, :integer
  end
end
