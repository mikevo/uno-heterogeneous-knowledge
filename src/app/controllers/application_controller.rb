class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:warning] = exception.message
    redirect_back_or_to root_path
  end

  private
  def not_authenticated
    flash[:warning] = 'You have to authenticate to access this page.'
    redirect_to sign_in_path
  end
end
