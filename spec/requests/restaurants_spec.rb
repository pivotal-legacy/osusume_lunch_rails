require 'rails_helper'

RSpec.describe 'Restaurants', type: :request do
  describe 'GET /restaurants' do
    it 'returns a list of restaurants' do
      restaurants = [
        Restaurant.create(name: 'Afuri'),
        Restaurant.create(name: 'Butagumi')
      ]

      get restaurants_path

      response_restaurants = JSON.parse(response.body)['restaurants']
      restaurant_names = restaurants.map(&:name)

      expect(response).to have_http_status(200)
      expect(response_restaurants.count).to equal(2)
      expect(restaurant_names).to include(response_restaurants[0]['name'])
    end
  end
end
