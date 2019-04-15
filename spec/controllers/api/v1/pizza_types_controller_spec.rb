# spec/api/v1/pizza_types_controller_spec.rb

require 'rails_helper'

describe Api::V1::PizzaTypesController do
  describe "GET '/api/v1/pizza_types' " do
    it "returns a successful 200 response" do
       get :index, format: :json
      expect(response).to have_http_status(200)
    end

    it "returns the number of pizzas on the menu" do

      get :index, format: :json
      parsed_response = JSON.parse(response.body)
      expect(parsed_response.length).to eq(11)
    end
  end
end
