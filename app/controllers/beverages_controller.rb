class BeveragesController < ApplicationController
  def index
    @beverages = Beverage.paginate(:page => params[:page], :per_page => 3)

  end

  def new
    @user = User.find(current_user.id)
    @beverage = @user.beverages.new
    3.times {@beverage.colors.build}


  end

  def create
    @user = User.find(current_user.id)
    @beverage = @user.beverages.new(beverage_params)


    if @beverage.save
      redirect_to beverages_path
    else
      render 'new'
    end
  end

  def show
    @beverage = Beverage.find(params[:id])
    @votes = Vote.new
  end

  def edit
    @beverage = Beverage.find(params[:id])

  end

  def destroy
  end

  def update
    @beverage = Beverage.find(params[:id])
    if @beverage.update(beverage_params)
      redirect_to beverages_path
    else
      render 'edit'
    end
  end

private
  def beverage_params
    params.require(:beverage).permit(:name, colors_attributes:[:id, :name, :value])
  end

end
