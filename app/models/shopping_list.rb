class ShoppingList < ApplicationRecord
    has_many :items
    belongs_to :user
    belongs_to :store

    validates :name, presence: true
end
