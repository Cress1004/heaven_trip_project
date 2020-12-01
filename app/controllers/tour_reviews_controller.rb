class TourReviewsController < ApplicationController
  before_action :set_tour_review, only: [:show, :edit, :update, :destroy]

  # GET /tour_reviews
  # GET /tour_reviews.json
  def index
    @tour_reviews = TourReview.all
  end

  # GET /tour_reviews/1
  # GET /tour_reviews/1.json
  def show
  end

  # GET /tour_reviews/new
  def new
    @tour_review = TourReview.new
  end

  # GET /tour_reviews/1/edit
  def edit
  end

  # POST /tour_reviews
  # POST /tour_reviews.json
  def create
    @tour_review = TourReview.new(tour_review_params)

    respond_to do |format|
      if @tour_review.save
        format.html { redirect_to @tour_review, notice: 'Tour review was successfully created.' }
        format.json { render :show, status: :created, location: @tour_review }
      else
        format.html { render :new }
        format.json { render json: @tour_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_reviews/1
  # PATCH/PUT /tour_reviews/1.json
  def update
    respond_to do |format|
      if @tour_review.update(tour_review_params)
        format.html { redirect_to @tour_review, notice: 'Tour review was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_review }
      else
        format.html { render :edit }
        format.json { render json: @tour_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_reviews/1
  # DELETE /tour_reviews/1.json
  def destroy
    @tour_review.destroy
    respond_to do |format|
      format.html { redirect_to tour_reviews_url, notice: 'Tour review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_review
      @tour_review = TourReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tour_review_params
      params.require(:tour_review).permit(:user_id, :tour_id, :review)
    end
end
