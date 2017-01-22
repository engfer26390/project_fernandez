class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
     if current_user.profile.blank?
       return new_customer_profile_path
     else
       return welcome_index_path
     end
   end


  # protected
  # def configure_permitted_parameters
  #   # http://www.rubydoc.info/github/plataformatec/devise/Devise/ParameterSanitizer
  #
  #   # Using the block form to completely override how we permit the
  #   # parameters for the `sign_in` action.
  #   # devise_parameter_sanitizer.permit(:sign_in) do |user_params|
  #   #   user_params.permit(:username, :email)
  #   # end
  #
  #   # Adding new parameters to be permitted in the `accept_invitation` action.
  #   # devise_parameter_sanitizer.for(:accept_invitation).concat [:username]
  #   binding.pry
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:worker_profile_attributes => [:nickname]])
  #
  #   # Removing the `password` parameter from the `account_update` action.
  #   # devise_parameter_sanitizer.permit(:account_update, except: [:password])
  # end

  # private
  #  def sign_up_params
  #    params.require(:user).permit(:email, :password, :password_confirmation, :worker_profile => [:nickname] )
  #  end
  #

  # private
  # def sign_up_params
  #   params.require(:user).permit(:email, :password, :password_confirmation,
  #   :profile_type, :worker_profile => [:nickname] )
  # end
end
