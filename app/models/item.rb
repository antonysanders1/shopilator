class Item < ApplicationRecord
    validates :name, presence: true
    validates :price,  length: { :minimum => 0.01 }
end
