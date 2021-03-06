class FlatsController < ApplicationController
  def index
    # @flats = Flat.all

    @flats = policy_scope(Flat)
  end

  def map
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
    @booking = Booking.new
    session[:return_to] ||= request.referer
  end

  def search

    if params[:search][:location].present?
      @flats = Flat.near(search_params[:location], 25)

      @markers = @flats.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { flat: flat }),
          image_url: helpers.asset_url('logo.png')
        }
      end



    else
      redirect_to root_path
    end
  end

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    authorize @flat
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    authorize @flat
    @flat.destroy
    redirect_to flats_path
  end

  def myflats
    @flats = Flat.where(user_id: current_user)
    authorize @flats
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price_per_night, :housing_type, :max_ppl, :address, :photo)
  end

  def search_params
    params.require(:search).permit(:location, :checkin, :checkout)
  end
end

#to be placed in new and edit form after Uploader is installed# PLUS ADD ADDRESS
  # <%= f.input :photo%>
# <%= f.input :photo_cache, as: :hidden %>

  #to be placed in MyFlats - Dashboard controller
  # <% if policy(flat).destroy? %>
  #   <%= link_to '<i class="far fa-trash-alt"></i>'.html_safe , flat_path(flat), method: :delete, id: "trash" %>
  # <% end %>

  # <% if policy(@flat).edit? %>
  #   <div class="row"><%= link_to "Edit", edit_flat_path(@flat) %></div>
  # <% end %>

