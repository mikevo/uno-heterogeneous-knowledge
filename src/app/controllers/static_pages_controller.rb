class StaticPagesController < ApplicationController
  skip_before_action :require_login
  skip_authorization_check
  
  def home
  end
  
  def about
  end
  
  def contact
  end
  
end
