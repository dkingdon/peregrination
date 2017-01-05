class User < ApplicationRecord
  
validates :email, presence: true, uniqueness: true, :format => /@/

  has_many :posts, dependent: :destroy
  # has_many :cities, through: :posts
  has_secure_password

end
