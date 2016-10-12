class RecommendationsController < ApplicationController
  def create
    restaurant = Restaurant.all.sample
    render status: 201, json: restaurant
  end
end
