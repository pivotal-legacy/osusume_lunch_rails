require 'rails_helper'

RSpec.describe RestaurantsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/restaurants').to route_to('restaurants#index')
    end

    it 'routes to #recommendation' do
      expect(get: '/restaurants/recommendation').to route_to(
        controller: 'restaurants',
        action: 'show',
        id: 'recommendation'
      )
    end
  end
end
