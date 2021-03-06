class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :only => [:create]

  def index

  end

  protected
    def after_sign_up_path_for(resource)
      @user
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :date_of_birth, :email, :password, :avatar) }
    end
end
