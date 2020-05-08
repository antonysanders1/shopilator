class RemoveListidFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :list_id, :integer
  end
end
