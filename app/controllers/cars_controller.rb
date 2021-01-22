class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car =  Car.new(car_params)
    if @car.save
      redirect car_path
    else 
      render :new
    end
  end

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
   if @car.update
    redirect car_path
   else
    render :index
   end
  end

  def destroy
    @car = Car.find(params[:id]).destroy
    redirect_to car_path

  end

  private

  def car_params
    params.require(:car).permit(:name, :make, :engine_manufacturer)
  end


end
