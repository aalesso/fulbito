class ApplicationController < ActionController::Base
  before_action :authenticate_owners_establishment!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:neighborhood_id, :address, :phone_number, :website, :name, :image])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:neighborhood_id, :address, :phone_number, :website, :name, :image])
  end
end
