class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?

  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:search, :show, :map]

  include Pundit

  after_action :verify_authorized, except: [:index, :map, :search, :show], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def after_sign_in_path_for(resource_or_scope)
    # @start_date = session[:form_data]["booking"]["start_date"]

    stored_location_for(resource_or_scope) || super
    # raise
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  # Its important that the location is NOT stored if:
  # - The request method is not GET (non idempotent)
  # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an
  #    infinite redirect loop.
  # - The request is an Ajax request as this can lead to very unexpected behaviour.
  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    # :user is the scope we are authenticating
    store_location_for(:user, request.fullpath)
  end
end
