class AppearancesController < ApplicationController
  before_action :set_appearance, only: [:show]
  before_action :set_appearances, only: [:index]

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.create(appearance_params)
    @episode = @appearance.episode
    if @appearance.valid?
      redirect_to @episode
    else
      flash[:errors] = @appearance.errors.full_messages
      flash[:attributes] = @appearance.attributes
      redirect_to new_appearance_path
    end
  end

  def index
  end

  def show
  end

  private

  def set_appearance
    @appearance = Appearance.find(params[:id])
  end

  def set_appearances
    @appearances = Appearance.all
  end

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end
