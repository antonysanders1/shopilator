class Item < ApplicationRecord
    belongs_to :user
    belongs_to :shopping_list
    belongs_to :store

    validates :name, presence: true
    validates :price,  length: { :minimum => 0.01 }
end
