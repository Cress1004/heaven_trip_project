class AddTotalcostAndNumberofpeopleAndVehicleToBookingTour < ActiveRecord::Migration[6.0]
  def change
    add_column :booking_tours, :total_cost, :integer
    add_column :booking_tours, :number_of_people, :integer
    add_column :booking_tours, :vehicle, :string
  end
end
