require 'rails_helper'

RSpec.describe 'Restaurants', type: :request do
  describe 'GET /restaurants' do
    it 'returns a list of restaurants' do
      Restaurant.create(name: 'Afuri')
      Restaurant.create(name: 'Butagumi')
      get restaurants_path

      response_restaurants = JSON.parse(response.body)['restaurants']

      expect(response).to have_http_status(200)
      expect(response_restaurants.count).to equal(2)
      expect(response_restaurants[0]['name']).to eq('Afuri')
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

  describe 'POST /restaurants' do
    it 'returns created restaurant' do
      restaurant_json = {
        restaurant: { name: 'New Restaurant' }
      }

      post restaurants_path, restaurant_json

      response_json = JSON.parse(response.body)

      expect(response.status).to eq(201)
      expect(response_json['name']).to eq('New Restaurant')
    end
  end
end
