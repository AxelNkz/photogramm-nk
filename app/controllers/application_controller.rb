class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?


    def after_sign_in_path_for(resource)
      stored_location_for(resource) || dashboard_path
    end

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :image, :image_cache, :description, :website ])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, :password ])

    end
end
