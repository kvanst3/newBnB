class FlatsController < ApplicationController
  def index
    # @flats = Flat.all
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def search
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price_per_night, :housing_type, :max_ppl, :address)
  end
end

  #to be placed in new and edit form after Uploader is installed# PLUS ADD ADDRESS
  # <%= f.input :photo%>
  # <%= f.input :photo_cache, as: :hidden %>

#index page
# <div class="container">
#   <%= link_to 'Add new', new_flat_path %>
#   <div class="cards">
#     <% @flats.each do |flat|%>
#       <div class="card d-flex flex-column">
#         <%= link_to '<i class="far fa-trash-alt"></i>'.html_safe , flat_path(flat), method: :delete, id: "trash" %>
#         <div> <%= link_to flat.title, flat_path(flat)  %></div>
#        <div> <%= flat.description %> </div>
#        <div> <%= flat.housing_type %> </div>
#        <div> <%= flat.max_ppl %> </div>
#        <div> <%= flat.price_per_night %> </div>
#       </div>
#     <% end %>
#   </div>
# </div>
