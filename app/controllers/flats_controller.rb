class FlatsController < ApplicationController
  def index
    # @flats = Flat.all
    @flats = policy_scope(Flat)
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
  end

  def search
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

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price_per_night, :housing_type, :max_ppl, :latitude, :longitute)
  end
end

  #to be placed in new and edit form after Uploader is installed# PLUS ADD ADDRESS
  # <%= f.input :photo%>
  # <%= f.input :photo_cache, as: :hidden %>
