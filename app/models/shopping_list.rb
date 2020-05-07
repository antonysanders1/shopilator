class ShoppingList < ApplicationRecord
    belongs_to :user
    belongs_to :store
    has_many :items
    

    validates :name, presence: true
end
