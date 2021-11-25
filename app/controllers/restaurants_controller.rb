class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    @restaurant.save!
    redirect_to restaurants_path
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
