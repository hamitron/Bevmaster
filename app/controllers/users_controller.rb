class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new

  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect root_path
    else
      render 'new'
    end

  end

  def edit
  end

  def destroy
  end

  def update
  end


  private
  def user_params
    params.require(:user).permit(:name, :type, :email, :password, :password_confirmation)
  end

end
