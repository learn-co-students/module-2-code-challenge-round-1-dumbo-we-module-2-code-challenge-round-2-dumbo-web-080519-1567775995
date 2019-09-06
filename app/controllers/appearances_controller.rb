class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.create(appearance_params(:guest_id, :episode_id, :guest_rating))
    if @appearance.valid?
      redirect_to @appearance.episode
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  private

  def appearance_params(*args)
    params.require(:appearance).permit(*args)
  end

end
