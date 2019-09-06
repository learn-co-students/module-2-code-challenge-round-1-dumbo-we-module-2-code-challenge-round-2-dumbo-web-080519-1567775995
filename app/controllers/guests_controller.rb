class GuestsController < ApplicationController

  def index
    @guests = Guest.all 
  end

  def show 
    @guest = Guest.find(params[:id])
    @Episodes = Episode.all
    @users = User.all
  end


end
