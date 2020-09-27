class PostImage < ApplicationRecord
  belongs_to :user
  has_many :post_comment, dependent: :destroy
  attachment :image
end
