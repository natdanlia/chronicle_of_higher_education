class Api::V1::OrdersController < ApplicationController
  def index
    @orders = Order.all

    render json:  @orders
  end

  def show
    @order = Order.all.find_by_id(params[:id])
    render json: @order
  end

  def create
    @order = Order.create()
    #byebug

    request.parameters["items"].each do |item|
      Item.create(quantity: item["quantity"] ,pizza_type_id: item["pizza_type_id"], order: @order)
    end

  end

  def order_params
    params.permit(items: [:quantity,:pizza_type_id])
  end

end
