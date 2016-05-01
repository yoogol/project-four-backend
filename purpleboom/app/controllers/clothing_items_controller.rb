class ClothingItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: current_user.ClothingItem.all, status: 200
  end

  def create
    @ClothingItem = ClothingItem.new(image: params[:image], type: params[:type], color: params[:color], last_worn: params[:last_worn], category: params[:category], user_id: current_user.id)

    if @ClothingItem.save
      render json: current_user.ClothingItem.all, status: 200
    else
      render json: {error: "Product could not be created."}, status: 422
    end
  end


end
