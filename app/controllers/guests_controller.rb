class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.find(params[:id])
    @guest = guest.create(guest_params)
    # @guest.create(guest_params)
    redirect_to @guest
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end




end
