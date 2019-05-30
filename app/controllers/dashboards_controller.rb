class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: [:edit, :mytrips]

  def edit
    @usertoedit = current_user
  end

  def update
    current_user.update(user_params)

  end

  def mytrips
    @bookings = Booking.where(user_id: current_user)
    authorize @bookings
  end

  def myflats
  end

  private

  def user_params
    params.require(:flat).permit(:email, :username, :description, :photo)
  end
end
