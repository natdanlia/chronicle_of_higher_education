class Api::V1::PizzaTypesController < ApplicationController
  def index
    @pizza_types = PizzaType.all

    render json:  @pizza_types
  end

end
