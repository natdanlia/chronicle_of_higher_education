class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items, status: 200
  end

  def show
    @item = Item.all.find_by_id(params[:id])
    render json: @item, status: 200
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


    def item_params
      params.require(:item).permit(:order_id, :pizza_type_id, :quantity)
    end
end
