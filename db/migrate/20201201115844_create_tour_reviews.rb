class CreateTourReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :tour_reviews do |t|
      t.integer :user_id
      t.integer :tour_id
      t.text :review

      t.timestamps
    end
  end
end
