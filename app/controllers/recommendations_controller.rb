class RecommendationsController < ApplicationController
  def create
    restaurant = Restaurant.where.not(id: blacklist_params[:ids]).sample
    render status: 201, json: restaurant
  end

  private

  def blacklist_params
    params.require(:blacklist).permit(ids: [])
  end
end
