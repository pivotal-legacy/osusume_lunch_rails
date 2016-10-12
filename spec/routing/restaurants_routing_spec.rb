require 'rails_helper'

RSpec.describe RestaurantsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/restaurants').to route_to('restaurants#index')
    end
  end
end
