require "application_system_test_case"

class TourReviewsTest < ApplicationSystemTestCase
  setup do
    @tour_review = tour_reviews(:one)
  end

  test "visiting the index" do
    visit tour_reviews_url
    assert_selector "h1", text: "Tour Reviews"
  end

  test "creating a Tour review" do
    visit tour_reviews_url
    click_on "New Tour Review"

    fill_in "Review", with: @tour_review.review
    fill_in "Tour", with: @tour_review.tour_id
    fill_in "User", with: @tour_review.user_id
    click_on "Create Tour review"

    assert_text "Tour review was successfully created"
    click_on "Back"
  end

  test "updating a Tour review" do
    visit tour_reviews_url
    click_on "Edit", match: :first

    fill_in "Review", with: @tour_review.review
    fill_in "Tour", with: @tour_review.tour_id
    fill_in "User", with: @tour_review.user_id
    click_on "Update Tour review"

    assert_text "Tour review was successfully updated"
    click_on "Back"
  end

  test "destroying a Tour review" do
    visit tour_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tour review was successfully destroyed"
  end
end
