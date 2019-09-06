class EpisodesController < ApplicationController

    before_action :set_episode, only: [:edit, :update, :show, :destroy]

    def index
      @episodes = Episode.all
    end


    def new
      @episode = Episode.new
    end

    def create
      @episode = Episode.create(episode_params)
        redirect_to @episode
    end

    def show

    end

    def edit

    end

    def update
      @episode.update(episode_params)
      redirect_to episode_path(@episode)
    end

    def destroy
      @episode.destroy
      redirect_to episodes_path
    end

    private

    def episode_params
      params.require(:episode).permit(:date, :number, :guest_id)
    end

    def set_episode
      @episode = Episode.find(params[:id])
    end

end
