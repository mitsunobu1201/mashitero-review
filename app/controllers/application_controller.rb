class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #ログイン後の移行先
  def after_sign_in_path_for(resource)
    about_path
  end

  #ログアウト後の移行先
  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
