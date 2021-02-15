class BookingsController < ApplicationController
  before_action :make_booking, only: [:show, :edit, :update, :destroy]

  def new
    @jersey = Jersey.find(params[:jersey_id])
    @booking = Booking.new
  end

  def create
    @jersey = Jersey.find(params[:jersey_id])
    @booking = Booking.new(booking_params)
    @booking.jersey = @jersey
    
    if @booking.save
      redirect_to jersey_booking_path(@jersey, @booking)
    else
      render new
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @jersey = @booking.jersey
  end

  def edit
    @jersey = Jersey.find(params[:jersey_id])
  end

  def update
    @jersey = Jersey.find(params[:jersey_id])
    if @booking.update(booking_params)
    redirect_to jersey_booking_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    flash[:alert] = "Your current booking was cancelled"
    redirect_to root_path
  end

  private

  def make_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
