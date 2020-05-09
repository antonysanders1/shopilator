class Item < ApplicationRecord
    belongs_to :user , optional: true
    belongs_to :store, optional: true
    belongs_to :shopping_list, optional: true

    validates :name, presence: true
    validates :price, presence: true
end
