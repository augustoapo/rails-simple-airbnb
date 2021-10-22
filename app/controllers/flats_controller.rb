class FlatsController < ApplicationController
    before_action :set_flat, only: [:show, :edit, :update, :destroy]

    def index
      @flats = Flat.all
    end
  
    def show
      # set_restaurant - Substituido pelo before_action
    end
  
    def new
      @flat = Flat.new
    end
  
    def create
      # Cria um novo restaurante
      @flat = Flat.new(flat_params)
      @flat.save
      redirect_to flat_path(@flat)
    end
  
    def edit
      # set_restaurant - Substituido pelo before_action
    end
  
    def update
      # set_restaurant - Substituido pelo before_action
      @flat.update(flat_params)
      redirect_to flat_path(@flat)
    end
  
    def destroy
      @flat.destroy
      redirect_to flats_path
    end
  
    private
  
    def set_flat
      @flat = Flat.find(params[:id])
    end
  
    def task_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests )
    end
end


