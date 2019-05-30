class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]
  skip_after_action :verify_authorized, only: [:create]
  # before_save :authenticate_user!, only: [:create]
  # skip_after_action :verify_authorized

  def create
    # Check to see if the user is registered/logged in
    if current_user.nil?

     # Store the form data in the session so we can retrieve it after login
     # session[:form_data] = params


     redirect_to new_user_session_path
     # raise
    else
      @flat = Flat.find(params[:flat_id])
      if session[:form_data].nil?
        @booking = Booking.new(booking_params)
      else
        @booking = Booking.new(session[:form_data].booking)
      end
      @booking.flat = @flat
      @booking.user = current_user
      authorize @booking
      if @booking.save
        redirect_to bookings_path(@booking)
      else
        render "flats/show"
        raise
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guest)
  end
end
