class CreateBookingTours < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_tours do |t|
      t.integer :user_id
      t.integer :tour_id

      t.timestamps
    end
  end
end
