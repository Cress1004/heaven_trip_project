require 'test_helper'

class TourReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_review = tour_reviews(:one)
  end

  test "should get index" do
    get tour_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_review_url
    assert_response :success
  end

  test "should create tour_review" do
    assert_difference('TourReview.count') do
      post tour_reviews_url, params: { tour_review: { review: @tour_review.review, tour_id: @tour_review.tour_id, user_id: @tour_review.user_id } }
    end

    assert_redirected_to tour_review_url(TourReview.last)
  end

  test "should show tour_review" do
    get tour_review_url(@tour_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_review_url(@tour_review)
    assert_response :success
  end

  test "should update tour_review" do
    patch tour_review_url(@tour_review), params: { tour_review: { review: @tour_review.review, tour_id: @tour_review.tour_id, user_id: @tour_review.user_id } }
    assert_redirected_to tour_review_url(@tour_review)
  end

  test "should destroy tour_review" do
    assert_difference('TourReview.count', -1) do
      delete tour_review_url(@tour_review)
    end

    assert_redirected_to tour_reviews_url
  end
end
