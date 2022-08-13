class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 12 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
  validates :email,
            format: { with: /^(.+)@(.+)$/, message: 'Email invalid' },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
end
