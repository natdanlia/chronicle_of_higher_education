class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def create
       # byebug
    @item = Item.new(item_params)



    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

    # Use callbacks to share common setup or constraints between actions.


    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:order_id, :pizza_type_id, :quantity)
    end
end
