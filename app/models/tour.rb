class Tour < ApplicationRecord
    has_one_attached :image
    has_many :tour_review, -> { order "created_at DESC"}
end
