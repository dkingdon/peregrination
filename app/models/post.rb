class Post < ApplicationRecord

validates :title, presence: true, length: { in: 1..200 }

  belongs_to :user
  belongs_to :city
end
