class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[create show]

  def create
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurants).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
