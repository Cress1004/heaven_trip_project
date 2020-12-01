require "application_system_test_case"

class BookingToursTest < ApplicationSystemTestCase
  setup do
    @booking_tour = booking_tours(:one)
  end

  test "visiting the index" do
    visit booking_tours_url
    assert_selector "h1", text: "Booking Tours"
  end

  test "creating a Booking tour" do
    visit booking_tours_url
    click_on "New Booking Tour"

    fill_in "Tour", with: @booking_tour.tour_id
    fill_in "User", with: @booking_tour.user_id
    click_on "Create Booking tour"

    assert_text "Booking tour was successfully created"
    click_on "Back"
  end

  test "updating a Booking tour" do
    visit booking_tours_url
    click_on "Edit", match: :first

    fill_in "Tour", with: @booking_tour.tour_id
    fill_in "User", with: @booking_tour.user_id
    click_on "Update Booking tour"

    assert_text "Booking tour was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking tour" do
    visit booking_tours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking tour was successfully destroyed"
  end
end
