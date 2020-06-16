class User < ApplicationRecord
    has_secure_password
    has_many :tasks
    validates :username, uniqueness: true
    validates :bio, presence: true
    validates :username, length: { minimum: 4 }
    
end
