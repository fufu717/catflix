class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :encrypted_password, :first_name, :last_name, :first_name_kana, :last_name_kana, :birth_day])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :email, :encrypted_password, :first_name, :last_name, :first_name_kana, :last_name_kana, :birth_day])
  end
end
