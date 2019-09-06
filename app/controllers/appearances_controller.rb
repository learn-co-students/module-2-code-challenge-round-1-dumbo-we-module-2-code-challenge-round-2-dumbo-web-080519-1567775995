class AppearancesController < ApplicationController
    
    def new
        @appearance = Appearance.new(flash[:attributes])
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
        @appearance.valid? ? (redirect_to @appearance.episode) : error_load(@appearance)
        #redirect_to @appearance.episode
    end

    def error_load(appearance)
        flash[:errors] = appearance.errors.full_messages
        flash[:attributes] = appearance.attributes
        redirect_to new_appearance_path
    end

    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end
