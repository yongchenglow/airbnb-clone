class Flat < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :description, :address, :bed, :bath, :bedroom, :price, :user
end
