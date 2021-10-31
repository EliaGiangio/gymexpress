class BarbellsController < ApplicationController

  def new
    @gym = Gym.find(params[:gym_id])
    @barbell = Barbell.new(barbell_params)
    redirect_to gym_path(@gym)
  end

   def create
    @gym = Gym.find(params[:gym_id])
    @barbell = @gym.barbells.create(barbell_params)
    redirect_to gym_path(@gym)
  end


  private
    def barbell_params
      params.require(:barbell).permit(:brand, :weight)
    end

end
