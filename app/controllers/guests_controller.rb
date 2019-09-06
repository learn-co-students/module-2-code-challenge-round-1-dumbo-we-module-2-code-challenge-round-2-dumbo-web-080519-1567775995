class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy, :add_appearance]

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params(:name, :occupation))
    if @guest.valid?
      redirect_to @guest
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to new_guest_path
    end
  end

  def show

  end

  def edit

  end

  def update
    if @guest.update(guest_params(:name, :occupation))
      redirect_to @guest
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to edit_guest_path(@guest)
    end
  end

  def destroy
    @guest.destroy
    redirect_to guests_path
  end

  def add_appearance
    @appearance = Appearance.new
    @episodes = Episode.all
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params(*args)
    params.require(:guest).permit(*args)
  end

end
