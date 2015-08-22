class AreaController < ApplicationController

    def index
      @areas = Area.all
      @new_area = Area.new
    end

    def show
      @area = Area.find(params[:id])
    end

    def create
      @area = Area.new(create_params)

      if @area.save
        @area
      else
        render :json => {:errors => @area.errors.full_messages}, status: :unprocessable_entity
      end
    end

    def update
      @areas = Area.all
      @area = Area.find(params[:id])

      if @area.update_attributes(update_params)
        @area
      else
        render :json => {:errors => @area.errors.full_messages}, status: :unprocessable_entity
      end
    end

    def destroy
      begin
        @area = Area.find(params[:id]).destroy
      rescue ActiveRecord::RecordNotFound
        render :json => {:error => "unable to delete area."}, status: :unprocessable_entity
      end
    end

    def create_params
      params.require(:area).permit(:name, :description, :location)
    end

    def update_params
      params.require(:area).permit(:name, :description, :location)
    end

end
