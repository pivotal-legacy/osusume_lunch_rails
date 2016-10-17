require 'rails_helper'

RSpec.describe 'Recommendation', :request do
  describe 'POST /recommendation' do
    it 'returns random restaurant' do
      afuri = Restaurant.create(name: 'Afuri')
      butagumi = Restaurant.create(name: 'Butagumi')
      capri = Restaurant.create(name: 'Capri')
      densui = Restaurant.create(name: 'Densui')

      blacklist_json = { blacklist:  { ids: [afuri.id, butagumi.id, densui.id] } }
      post recommendations_path, blacklist_json
      response_restaurant = JSON.parse(response.body)

      expect(response_restaurant['name']).to eq(capri.name)
    end
  end
end
