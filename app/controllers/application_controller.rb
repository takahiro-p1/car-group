class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :undergraduate, :grade,])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :self_introduction, :profile_image])

  end
end
