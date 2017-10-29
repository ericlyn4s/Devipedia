class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protect_from_forgery with: Pundit

  before_action :authenticate_user!

end
