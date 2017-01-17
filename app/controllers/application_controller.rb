class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation,
    :profile_type, :worker_profile_attributes => [:bio])
  end
end
