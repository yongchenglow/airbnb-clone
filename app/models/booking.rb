class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user
  validates :checkin_date, presence: true
  validates :checkout_date, presence: true
  validates :guest, presence: true
end
