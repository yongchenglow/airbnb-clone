class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: %I[member admin]

  after_initialize(:set_default_role, { if: :new_record? })

  def set_default_role
    self.role ||= :member
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
