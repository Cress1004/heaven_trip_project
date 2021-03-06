class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :booking_tour, -> { order "created_at DESC"}
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  has_one_attached :avatar

end
