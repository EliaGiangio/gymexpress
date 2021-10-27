class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
   @gym = Gym.find(params[:id])
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)

    if @gym.save
      redirect_to @gym
    else
      render :new
    end
  end

  private
    def gym_params
      params.require(:gym).permit(:name, :description)
    end

end
