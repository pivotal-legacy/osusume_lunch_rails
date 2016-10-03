require 'rails_helper'

RSpec.describe 'Restaurants', type: :request do
  describe 'GET /restaurants' do
    it 'works! (now write some real specs)' do
      get restaurants_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /restaurants/recommendation' do
    it 'returns random restaurant' do
      restaurants = [
        Restaurant.create(name: 'Afuri'),
        Restaurant.create(name: 'Butagumi')
      ]

      get restaurant_path('recommendation')

      response_restaurant = JSON.parse(response.body)['name']
      restaurant_names = restaurants.map(&:name)

      expect(restaurant_names).to include(response_restaurant)
    end
  end
end
