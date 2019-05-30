class DashboardsController < ApplicationController
  def profile
  end

  def mytrips
    @bookings = Booking.where(user_id: current_user)
    authorize @bookings
  end

  def myflats
  end
end
