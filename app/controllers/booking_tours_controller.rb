class BookingToursController < ApplicationController
  before_action :set_booking_tour, only: [:show, :edit, :update, :destroy]

  # GET /booking_tours
  # GET /booking_tours.json
  def index
    @booking_tours = BookingTour.all
  end

  # GET /booking_tours/1
  # GET /booking_tours/1.json
  def show
  end

  # GET /booking_tours/new
  def new
    @booking_tour = BookingTour.new
  end

  # GET /booking_tours/1/edit
  def edit
  end

  # POST /booking_tours
  # POST /booking_tours.json
  def create
    @booking_tour = BookingTour.new(booking_tour_params)

    respond_to do |format|
      if @booking_tour.save
        format.html { redirect_to @booking_tour, notice: 'Booking tour was successfully created.' }
        format.json { render :show, status: :created, location: @booking_tour }
      else
        format.html { render :new }
        format.json { render json: @booking_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_tours/1
  # PATCH/PUT /booking_tours/1.json
  def update
    respond_to do |format|
      if @booking_tour.update(booking_tour_params)
        format.html { redirect_to @booking_tour, notice: 'Booking tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking_tour }
      else
        format.html { render :edit }
        format.json { render json: @booking_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_tours/1
  # DELETE /booking_tours/1.json
  def destroy
    @booking_tour.destroy
    respond_to do |format|
      format.html { redirect_to booking_tours_url, notice: 'Booking tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_tour
      @booking_tour = BookingTour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_tour_params
      params.require(:booking_tour).permit(:user_id, :tour_id)
    end
end
