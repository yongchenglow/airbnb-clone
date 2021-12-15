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

  has_one_attached :avatar
  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :reviews

  # rubocop:disable Naming/VariableNumber
  validates :avatar, aspect_ratio: :is_1_1
  # rubocop:enable Naming/VariableNumber
end
