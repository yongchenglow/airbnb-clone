class Booking < ApplicationRecord
  belongs_to :flat, :user
  validates :checkin_date, presence: true
  validates :checkout_date, presence: true
  validates :guest, presence: true
end
