class Store < ApplicationRecord
    has_many :users
    has_many :shopping_lists, through: :users

    validates :name, presence: true
end
