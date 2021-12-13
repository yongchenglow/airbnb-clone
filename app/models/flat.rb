class Flat < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates_presence_of :title, :description, :address, :bed, :bath, :bedroom, :price, :user
  validates :photos, limit: { min: 0, max: 5 }

  include PgSearch::Model
  pg_search_scope :search_by_title_or_description_or_address,
                  against: %I[title description address],
                  using: {
                    tsearch: { prefix: true }
                  }
end
