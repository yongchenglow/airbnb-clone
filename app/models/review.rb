class Review < ApplicationRecord
  belongs_to :flat
  belongs_to :user
  validates :rating, presence: true
end
