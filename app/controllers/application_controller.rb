class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :should_change_password

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_path
  end

  #Can-Can fix for Strong parameters in rails 4
  before_filter do
    resource = controller_path.singularize.gsub('/', '_').to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end


  def after_sign_in_path_for(resource)
    resource
  end

  def should_change_password
    if user_signed_in? && current_user.should_change_password?
      redirect_to change_password_users_path
    end
  end
end
