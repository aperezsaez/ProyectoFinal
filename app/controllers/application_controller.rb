class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, :email, :bio, :phone, :role])
  end

  def after_sign_up_path_for(resources)
      edit_user_registration(current_user.id)
  end


end
