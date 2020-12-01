require 'test_helper'

class BookingToursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_tour = booking_tours(:one)
  end

  test "should get index" do
    get booking_tours_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_tour_url
    assert_response :success
  end

  test "should create booking_tour" do
    assert_difference('BookingTour.count') do
      post booking_tours_url, params: { booking_tour: { tour_id: @booking_tour.tour_id, user_id: @booking_tour.user_id } }
    end

    assert_redirected_to booking_tour_url(BookingTour.last)
  end

  test "should show booking_tour" do
    get booking_tour_url(@booking_tour)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_tour_url(@booking_tour)
    assert_response :success
  end

  test "should update booking_tour" do
    patch booking_tour_url(@booking_tour), params: { booking_tour: { tour_id: @booking_tour.tour_id, user_id: @booking_tour.user_id } }
    assert_redirected_to booking_tour_url(@booking_tour)
  end

  test "should destroy booking_tour" do
    assert_difference('BookingTour.count', -1) do
      delete booking_tour_url(@booking_tour)
    end

    assert_redirected_to booking_tours_url
  end
end
