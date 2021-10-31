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
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @gym = Gym.find(params[:id])


  end

  def update
    @gym = Gym.find(params[:id])

    if @gym.update(gym_params)
      redirect_to @gym
    else
      render :edit
    end
  end

  def destroy
    @gym = Gym.find(params[:id])
    @gym.destroy

    redirect_to root_path
  end

  private
    def gym_params
      params.require(:gym).permit(:name, :description, :logo, barbells_attributes: [:_delete])
    end

end
