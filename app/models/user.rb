class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :trackable

  has_one_attached :photo

  validates :photo,
            attached: true,
            content_type: %i[png jpg jpeg],
            size: {
              less_than: 5.megabytes,
              message: "File must me less than 5mb"
            }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
