class ItemTypesController < ApplicationController
  def index
    @item_types = ItemType.all
    @new_item_type = ItemType.new
  end

  def create
    @item_type = ItemType.new(create_params)

    if @item_type.save
      @item_type
    else
      render :json => {:errors => @item_type.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @item_type = ItemType.find(params[:id])
  end

  def update
    @item_type = ItemType.find(params[:id])

    if @item_type.update_attributes(update_params)
      @item_type
    else
      render :json => {:errors => @item_type.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      @item_type = ItemType.find(params[:id]).destroy
    rescue ActiveRecord::RecordNotFound
      render :json => { :error => "Unable to delete item type." }, status: :unprocessable_entity
    end
  end

  def create_prop_def
    @item_property_definition = ItemPropertyDefinition.new(create_prop_def_params)

    if @item_property_definition.save
      @item_property_definition
    else
      render :json => {:errors => @item_property_definition.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy_prop_def
    begin
      @item_property_definition = ItemPropertyDefinition.find(params[:id]).destroy
    rescue ActiveRecord::RecordNotFound
      render :json => { :error => "Unable to delete property definition." }, status: :unprocessable_entity
    end
  end

  private
    def create_params
      params.require(:item_type).permit(:name, :description)
    end

    def update_params
      params.require(:item_type).permit(:name, :description)
    end

    def create_prop_def_params
      params.require(:item_property_definition).permit(:name, :item_type_id)
    end
end
