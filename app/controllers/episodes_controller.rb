class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.all.find(params[:id])
    @appearances = Appearance.all
    # byebug
  end

end
