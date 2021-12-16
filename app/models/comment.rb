class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  scope :rating_desc, -> { order(rating: :desc) }
end
