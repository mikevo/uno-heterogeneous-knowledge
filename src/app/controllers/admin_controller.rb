class AdminController < ApplicationController
  authorize_resource :class => false

  def users
    @users = User.all
  end
end
