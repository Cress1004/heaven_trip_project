json.extract! booking_tour, :id, :user_id, :tour_id, :created_at, :updated_at
json.url booking_tour_url(booking_tour, format: :json)
