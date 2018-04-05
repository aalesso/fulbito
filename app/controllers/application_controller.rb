class ApplicationController < ActionController::Base
  before_action :authenticate_owners_establishment!

  protect_from_forgery with: :exception
end
