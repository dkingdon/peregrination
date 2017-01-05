class User < ApplicationRecord

validates :email, presence: true, uniqueness: true, :format => /@/

validates :name, presence: true, uniqueness: true

  has_many :posts, dependent: :destroy
  # has_many :cities, through: :posts
  has_secure_password

end
