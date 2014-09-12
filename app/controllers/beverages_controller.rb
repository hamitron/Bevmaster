class BeveragesController < ApplicationController
  def index
  end

  def new
    @beverage = Beverage.new
  end

  def create
    @beverage = Beverage.new
    if @beverage.save(beverage_params)
      redirect_to beverages_path
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
  def beverage_params
    params.require(:beverage).permit(:name, :colors, :edition)


end
