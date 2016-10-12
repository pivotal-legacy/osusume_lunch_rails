require 'rails_helper'

RSpec.describe RestaurantsController, type: :routing do
  describe 'routing' do
    it 'routes to /recommendations' do
      expect(post: '/recommendations').to route_to(
        controller: 'recommendations',
        action: 'create'
      )
    end
  end
end
