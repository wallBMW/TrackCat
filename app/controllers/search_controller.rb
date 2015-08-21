class SearchController < ApplicationController
  def index
  end

  def search
    @item_properties = ItemProperty.where(ItemProperty.arel_table[:value].matches("%#{params[:criteria]}%"))

    @item_types = ItemType.where(ItemType.arel_table[:name].matches("%#{params[:criteria]}%"))
    @item_types += ItemType.where(ItemType.arel_table[:description].matches("%#{params[:criteria]}%"))
    @item_types = @item_types.uniq

    @areas = Area.where(Area.arel_table[:name].matches("%#{params[:criteria]}%"))
    @areas += Area.where(Area.arel_table[:description].matches("%#{params[:criteria]}%"))
    @areas += Area.where(Area.arel_table[:location].matches("%#{params[:criteria]}%"))
    @areas = @areas.uniq
  end
end
