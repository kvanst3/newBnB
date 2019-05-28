class DashboardsController < ApplicationController
  def profile
    @flats = Flat.all
  end
end
