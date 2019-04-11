class Api::V1::OrdersController < ApplicationController

  before_action :validate_request_parameters, only: [:create]
  def index
    @orders = Order.all

    render json:  @orders
  end

  def show
    @order = Order.all.find_by_id(params[:id])
    render json: @order
  end



  def create
    @order = Order.new()
    #byebug
      if @order.save
        request.parameters["items"].each do |item|
          Item.create(quantity: item["quantity"] ,pizza_type_id: item["pizza_type_id"], order: @order)
        end
      else
        render json: @order.errors, status: :unprocessable_entity
      end
  end

  def validate_request_parameters
    return false unless request.parameters["items"].length > 0
  end

  # def order_params
  #   params.permit(items: [:quantity,:pizza_type_id])
  # end

end
