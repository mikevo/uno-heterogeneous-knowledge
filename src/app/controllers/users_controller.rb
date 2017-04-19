class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  skip_authorization_check only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(params[:user][:email], params[:user][:password])
      flash[:success] = 'Welcome!'
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def password
    render 'change_password'
    authorize! :update, User
  end

  def change_password
    @user = User.find(current_user.id)

    return if @user.blank?

    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.change_password!(params[:user][:password])
      flash[:success] = 'Password was successfully updated.'
      redirect_to dashboard_path
    else
      render 'change_password'
    end
      authorize! :update, User
  end

  def change_role
    user = User.find(params[:id])

    if user.update(role: params[:role])
      flash[:success] = 'Role updated!'
      redirect_to admin_users_path
    else
      flash[:danger] = 'Role update failed!'
      redirect_to admin_users_path
    end
    authorize! :update, User
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username, :role)
  end
end
