require 'rails_helper'

RSpec.describe 'Recommendations', type: :request do
  describe 'POST /recommendations' do
    it 'returns created recommendation without blacklist' do
      restaurants = [
        Restaurant.create(name: 'Afuri'),
        Restaurant.create(name: 'Butagumi')
      ]

      post recommendations_path

      expect(response).to have_http_status(201)
      response_restaurant = JSON.parse(response.body)['name']
      restaurant_names = restaurants.map(&:name)
      expect(restaurant_names).to include(response_restaurant)
    end
  end
end
