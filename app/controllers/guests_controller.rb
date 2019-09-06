class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
  end

  def create
  end
  
  def show
    @guest = Guest.all.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
