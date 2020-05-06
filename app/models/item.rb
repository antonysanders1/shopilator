class Item < ApplicationRecord
    belongs_to :user
    belongs_to :store
    belongs_to :shopping_list

    validates :name, presence: true
    validates :price,  length: { :minimum => 0.01 }
end
