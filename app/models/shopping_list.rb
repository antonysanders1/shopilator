class ShoppingList < ApplicationRecord
    belongs_to :user, counter_cache: true
    belongs_to :store
    has_many :items

    validates :name, presence: true
    validates :budget, presence: true
    validates :budget, numericality: {greater_than_or_equal_to: 0}
    scope :recent, -> { order("created_at DESC") }
end
