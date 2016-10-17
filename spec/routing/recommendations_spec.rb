require 'rails_helper'

RSpec.describe 'Recommendations', type: :routing do
  describe 'routes to #recommendations' do
    it 'returns created recommendation with blacklist' do
      expect(post: '/recommendations').to route_to('recommendations#create')
    end
  end
end
