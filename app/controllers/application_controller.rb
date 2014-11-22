class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :should_change_password

  def after_sign_in_path_for(resource)
    resource
  end

  def should_change_password
    if user_signed_in? && current_user.should_change_password?
      redirect_to change_password_users_path
    end
  end
end
