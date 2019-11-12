class ItemsController < ApplicationController

  def index
    #@items = Item.all
    @items = policy_scope(Item)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:category,:type,:color,:size,:main_picture,:second_picture,:third_picture,:accessibility,:description,:gender,:exchange,:cleaning,:guarantee,:contract)
  end

end
