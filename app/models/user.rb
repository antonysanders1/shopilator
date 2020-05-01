class User < ApplicationRecord
    has_secure_password
    validates :username, { :length => { :minimum => 2 } }
    validates :email, uniqueness: true
    validates :password, { :length => { :in => 4..16 } }
end
