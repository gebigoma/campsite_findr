class UsersController < ApplicationController

  before_action :authorize, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    @sites = Site.all
  end

  def show
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_to user_path(current_user.id)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    # delete current user
    current_user.destroy
    # clear the cookie
    session[:user_id] = nil
    # redirect to sign up page
    redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
