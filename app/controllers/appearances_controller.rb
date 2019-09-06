class AppearancesController < ApplicationController

  #  validates :rating, presence: true
 
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
    @appearance = Appearance.create(appearance_params)
    redirect_to @appearance.episode
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    redirect_to appearance
  end

  def destroy
    @appearance = Appearance.find(params[:id])
    @appearance.destroy
    redirect_to appearances
  end

  private

  def appearance_params
    params.require(:appearance).permit(:name, :occupation)
  end


end
