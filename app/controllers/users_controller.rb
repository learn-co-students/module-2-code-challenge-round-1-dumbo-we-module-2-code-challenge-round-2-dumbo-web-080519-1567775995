class UsersController < ApplicationController


    def index
        @user = User.all
    end

    
    def new 
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user.episode)
    end

    private

    def user_params
        params.require(:user).permit(:rating, :guest_id, :episode_id)
    end
end
