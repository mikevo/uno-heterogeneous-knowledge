class StaticPagesController < ApplicationController
  skip_before_action :require_login
  skip_authorization_check

  def home
    if current_user
      redirect_to dashboard_path
    else
      redirect_to sign_in_path
    end
  end

  def about
  end

  def contact
  end

end
