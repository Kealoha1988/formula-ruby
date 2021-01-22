class DriversController < ApplicationController
  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)
    byebug
    if @driver.save
      redirect_to driver_path
    else 
      render :new
    end
  end

  def index
    @drivers = Driver.all
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
   if @driver.update
    redirect driver_path
   else
    render :index
   end
  end

  def destroy
    @driver = Driver.find(params[:id]).destroy
    redirect_to driver_path

  end

  private

  def driver_params
    params.require(:driver).permit(:name, :country, :age)
  end

end
