class AreaController < ApplicationController

    def index
      @areas = Area.all
    end

    def show
      @area = Area.find(params[:id])
    end

    def create
      @areas = Area.all
      @area = Area.create(area_params)
    end

    def new
      @area = Area.new
    end

    def edit
      @area = Area.find(params[:id])
    end

    def update
      @areas = Area.all
      @area = Area.find(params[:id])

      @area.update_attributes(area_params)
    end

    def destroy
      @areas = Area.all
      @area = Area.find(params[:id])
      @area.destroy
    end

    def area_params
      params.require(:area).permit(:description, :location)
    end



end
