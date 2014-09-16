class UsersController < ApplicationController
  before_action :user_find, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect new_sessions_path
    else
      render 'new'
    end

  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

private
  def user_find
    @user = User.find(params[:id])

  end
  def user_params
    params.require(:user).permit(:name, :type, :email, :password, :password_confirmation)
  end

end
