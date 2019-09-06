class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @appearances = Appearance.all.select {|appearance| appearance.episode_id == @episode.id}
  end
end
