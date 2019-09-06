class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    find_key
  end

  private

  def find_key
    @guest = Guest.find(params[:id])
  end

end
