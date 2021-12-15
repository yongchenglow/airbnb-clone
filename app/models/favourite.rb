class Favourite < ApplicationRecord
  belongs_to :user
  has_one :flat
end
