class BeveragesController < ApplicationController
  def index
    @beverages = Beverage.all
  end

  def new
    @beverage = Beverage.new
    @colors = Color.all
  end

  def create
    @beverage = Beverage.new(beverage_params)
    @colors = Color.all
    if @beverage.save
      redirect_to beverages_path
    else
      render 'new'
    end
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
    params.require(:beverage).permit(:name, :colors, :edition)
  end

end
