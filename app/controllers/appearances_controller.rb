class AppearancesController < ApplicationController
    before_action :set_appearance, only: [:show, :edit, :update, :destroy]

    def index
        @appearances = Appearance.all
    end

    def show
    end

    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def edit
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            redirect_to guest_path(@appearance.guest_id)
        else
            flash[:errors] = @appearance.errors.full_messages
            render :new
        end
    end

    def update
        if @appearance.update(appearance_params)
            redirect_to @appearance
        else
            flash[:errors] = @appearance.errors.full_messages
            render :edit
        end
    end

    def destroy
        @appearance.destroy
        redirect_to appearances_path
    end

    private

    def set_appearance
        @appearance = Appearance.find(params[:id])
    end

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
