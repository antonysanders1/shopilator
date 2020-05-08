class Item < ApplicationRecord
    belongs_to :user , optional: true
    belongs_to :store, optional: true
    belongs_to :shopping_list

    validates :name, presence: true
    validates :price, inclusion: { :in => 0.1..999.99 }
end
