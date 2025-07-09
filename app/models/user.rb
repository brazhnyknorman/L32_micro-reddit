class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 3, maximum: 60 }

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password, presence: true
  validates :password, length: { minimum: 6 }
end
