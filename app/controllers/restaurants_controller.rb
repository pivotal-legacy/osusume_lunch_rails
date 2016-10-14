class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)

    render json: { restaurants: @restaurants }
  end

  def show
    @restaurant = Restaurant.all.sample

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

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
