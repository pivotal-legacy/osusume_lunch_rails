class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :destroy]
  def index
    @restaurants = Restaurant.order(:name)

    render json: { restaurants: @restaurants }
  end

  def show
    render json: @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restuarant.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant.destroy
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
