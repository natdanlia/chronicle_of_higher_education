require 'rails_helper'

RSpec.describe Api::V1::ItemsController do
  describe "GET #index" do
    before do
      get :index
    end

    it "JSON body response contains expected item attributes" do

      json_response = JSON.parse(response.body)
      byebug

      json_response.each do |res|
        expect(res.keys).to match_array(["id", "order_id", "pizza_type", "quantity"])
      end
    end
  end
end


RSpec.describe 'Items API', type: :request do

  describe 'GET /api/v1/items' do

    before { get '/api/v1/items' }

    it 'returns items' do

      expect(JSON.parse(response.body).length).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
