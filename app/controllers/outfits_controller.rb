class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
    @items = Item.all
  end

  def create
    p "NAME: #{outfit_params[:name]}"
    p "ITEM_ID: #{params[:item_id]}"

    outfit = Outfit.create(outfit_params)
    if outfit.save
      new_item = Item.find_by_id(params[:shirt_id])
      outfit.items << new_item
      new_item = Item.find_by_id(params[:pants_id])
      outfit.items << new_item
      new_item = Item.find_by_id(params[:shoes_id])
      outfit.items << new_item
      redirect_to outfit_path(outfit)
    end
  end

  def show
    @outfit = Outfit.find_by_id(params[:id])
  end

  def edit
    @outfit = Outfit.find_by_id(params[:id])
  end

  def update
    outfit = Outfit.find_by_id(params[:id])
    outfit.update_attributes(outfit_params)
    redirect_to outfit_path(outfit)
  end

  def destroy
    outfit = Outfit.find_by_id(params[:id])
    outfit.delete
    redirect_to outfits_path
  end

  private

  def outfit_params
    outfit_params = params.require(:outfit).permit(:name, :tag)
  end

end
