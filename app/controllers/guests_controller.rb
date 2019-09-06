class GuestsController < ApplicationController


  before_action :set_guests, only: [:edit, :update, :show, :destroy]

  def index
    @guests = Guest.all
  end


  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
      redirect_to @guest
  end

  def show

  end

  def edit

  end

  def update
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end

  def destroy
    @guest.destroy
    redirect_to guests_path
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end

  def set_guests
    @guest = Guest.find(params[:id])
  end
end
