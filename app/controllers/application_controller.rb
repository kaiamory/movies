class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:dob, :name, :bio, :image, :number_of_films])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:dob, :name, :bio, :image, :number_of_films])
  end
end
