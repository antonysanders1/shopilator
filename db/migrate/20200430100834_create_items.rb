class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :user_id
      t.integer :store_id
      t.integer :list_id

      t.timestamps
    end
  end
end
