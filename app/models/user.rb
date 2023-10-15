class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, length: { maximum: 16 }, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
end
