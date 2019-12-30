require 'rails_helper'

RSpec.describe PlacesController, type: :controller do
  describe "places#index" do
    it "should list the places in the database" do
      place1 = FactoryBot.create(:place)
      place2 = FactoryBot.create(:place)
      get :index
      expect(response).to have_http_status :success
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq(2)
    end
  end
end
