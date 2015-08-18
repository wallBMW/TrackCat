class ItemTypesController < ApplicationController
  def index
    @item_types = ItemType.all
    @new_item_type = ItemType.new
  end

  def create
    @item_type = ItemType.new(create_params)

    if @item_type.save
      #render :json => @item_type
      @item_type
    else
      render :json => {:errors => @item_type.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @item_type = ItemType.find(params[:id])
  end

  def destroy
    begin
      @item_type = ItemType.find(params[:id]).destroy
    rescue ActiveRecord::RecordNotFound
      render :json => { :error => "Unable to delete item type." }, status: :unprocessable_entity
    end
  end

  private
    def create_params
      params.require(:item_type).permit(:name, :description)
    end
end
