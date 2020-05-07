class Store < ApplicationRecord
    has_many :shopping_lists
    has_many :users, through: :shopping_lists
    

    validates :name, presence: true
end
