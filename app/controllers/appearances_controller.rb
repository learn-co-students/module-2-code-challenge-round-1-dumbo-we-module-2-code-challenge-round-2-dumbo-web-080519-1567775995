class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.create(params_key())
    redirect_to episode_path(@appearance.episode)
  end

  private

  def params_key
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
