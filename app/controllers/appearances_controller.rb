class AppearancesController < ApplicationController
# before_action :find_appearance, only: [:show, :create, :update, :destroy]
  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    # @appearance = Appearance.find(params[:id])
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

  # def find_appearance
  #   @appearance = Appearance.find(params[:id])
  # end
end
