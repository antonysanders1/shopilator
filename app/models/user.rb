class User < ApplicationRecord
    has_many :shopping_lists
    has_many :stores, through: :shopping_lists
    has_many :items, through: :shopping_lists
    has_secure_password

    validates :username, { :length => { :minimum => 2 } }
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, { :length => { :in => 4..16 } }

    
    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex(8)
        end
      end

end
