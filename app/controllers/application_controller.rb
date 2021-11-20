class ApplicationController < ActionController::Base
  respond_to :html, :json
  before_action :authenticate_director!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[dob name bio image
                                               number_of_films])

    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[dob name bio image
                                               number_of_films])
  end
end
