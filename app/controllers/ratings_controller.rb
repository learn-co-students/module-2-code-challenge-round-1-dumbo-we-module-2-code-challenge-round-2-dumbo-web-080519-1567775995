class RatingsController < ApplicationController
    before_action :set_ratings, only: [:edit, :update, :show, :destroy]

    def index
        @ratings = Rating.all
    end

    def new
      @rating = Rating.new
    end

    def create
      @rating = Rating.create(rating_params)
      if @rating.valid?
        redirect_to @rating
      else
        flash[:errors] = @rating.errors.full_messages
        flash[:attributes] = @rating.attributes
        redirect_to new_rating_path
      end

    end

    def show

    end

    def edit

    end

    def update
      if @rating.update(rating_params)
         redirect_to rating_path(@rating)
      else
        flash[:errors] = @rating.errors.full_messages
        flash[:attributes] = @rating.attributes
        redirect_to edit_rating_path
      end
    end

    def destroy
      @rating.destroy
      redirect_to ratings_path
    end

    private

    def rating_params
      params.require(:rating).permit(:rate, :guest_id, :episode_id)
    end

    def set_ratings
      @rating = Rating.find(params[:id])
    end
end
