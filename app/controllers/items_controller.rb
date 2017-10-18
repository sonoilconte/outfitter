class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create(item_params)
    if item.save
      redirect_to item_path(item)
    end
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def edit
    @item = Item.find_by_id(params[:id])
  end

  def update
    item = Item.find_by_id(params[:id])
    item.update_attributes(item_params)
    redirect_to item_path(item)
  end

  def destroy
    item = Item.find_by_id(params[:id])
    item.delete
    redirect_to items_path
  end

  private

  def item_params
    item_params = params.require(:item).permit(:name, :brand, :category, :image)
  end

end
