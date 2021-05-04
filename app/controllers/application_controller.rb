class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
   
  def after_sign_in_path_for(resource)
    cosmes_to_path
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :birth_date])
  end
end
