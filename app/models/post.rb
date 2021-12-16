class Post < ApplicationRecord
  validates :name, presence: true
  validates :user, presence: true 
  validates :description, presence:true
  belongs_to :user
  has_many :comments

  self.per_page = 2

  WillPaginate.per_page = 2

  def highest_rating_comment
    comments.rating_desc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
end
