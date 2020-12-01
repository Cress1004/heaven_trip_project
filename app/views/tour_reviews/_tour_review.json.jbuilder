json.extract! tour_review, :id, :user_id, :tour_id, :review, :created_at, :updated_at
json.url tour_review_url(tour_review, format: :json)
