class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :birth_date
    devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name << :birth_date
  end

end
