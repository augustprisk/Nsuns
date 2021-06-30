class GymController < ApplicationController
  def index
  	@gyms = Gym.all
  end

  def show
  	@gym = Gym.find(params[:id])
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

  private
  	def gym_params
  		params.require(:gym).permit(:name, :ORM)
  	end

end
