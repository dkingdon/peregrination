class User < ApplicationRecord

  has_many :posts, dependent: :destroy
  has_many :cities, through: :posts
  has_secure_password

end
