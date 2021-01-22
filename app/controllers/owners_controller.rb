class OwnersController < ApplicationController
  def new
    @owner = Owner.new
    @owner.build_team
  end

  def create
    @owner = Owner.new(owner_params)
    #byebug
    if @owner.save
      redirect_to @owner
    else 
      render :new
    end
  end

  def index

    @owners = Owner.all
  
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def edit
    @owner = Owner.find_by_id(params[:id])
  end

  def update
    @owner = Owner.find_by_id(params[:id])
    if @owner.update(owner_params)
      redirect_to owner_path(@owner)
    else
      render :index
   end
  end

  def destroy
    @owner = Owner.find(params[:id]).destroy
    redirect_to owners_path

  end

  private

  def owner_params
    params.require(:owner).permit(:name, :country, team_attributes: [:name, :country, :championships, :year_founded])
  end

end
