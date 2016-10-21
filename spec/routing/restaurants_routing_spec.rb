require 'rails_helper'

RSpec.describe RestaurantsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/restaurants').to route_to('restaurants#index')
    end

    it 'routes to specific restaurant' do
      expect(get: '/restaurants/1').to route_to(
        controller: 'restaurants',
        action: 'show',
        id: '1'
      )
    end

    it 'routes to destroy specific restaurant' do
      expect(delete: '/restaurants/1').to route_to(
        controller: 'restaurants',
        action: 'destroy',
        id: '1'
      )
    end
  end
end
