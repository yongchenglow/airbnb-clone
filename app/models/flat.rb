class Flat < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates_presence_of :title, :description, :address, :bed, :bath, :bedroom, :price, :user
  validates :photos, limit: { min: 0, max: 5 }
end
