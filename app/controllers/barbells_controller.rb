class BarbellsController < ApplicationController

def create
    @gym = Gym.find(params[:gym_id])
    @barbell = @gym.barbells.create(barbell_params)
  end

  private
    def barbell_params
      params.require(:barbell).permit(:type, :weight)
    end
end
end
