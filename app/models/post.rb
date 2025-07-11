class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user_id, presence: true

  validates :title, length: { in: 2..50 }
  validates :body, presence: true

  validates :body, presence: true
  validates :body, length: { minimum: 1 }
end
