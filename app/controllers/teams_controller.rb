class TeamsController < ApplicationController
  def new
    @team = Team.new
    @team.cars.build
    @team.drivers.build
  end

  def create
    @team =  Team.new(team_params)
    byebug
    if @team.save
      redirect team_path
    else 
      render :new
    end
  end

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
   if @team.update
    redirect team_path
   else
    render :index
   end
  end

  def destroy
    @team = Team.find(params[:id]).destroy
    redirect_to team_path

  end


  private

  def team_params
    params.require(:team).permit(:name, :country, :championships, :year_founded)
  end

end
