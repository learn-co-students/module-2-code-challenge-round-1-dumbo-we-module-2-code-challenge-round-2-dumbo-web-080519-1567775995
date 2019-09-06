class AppearancesController < ApplicationController
  def new
    @appearance = Apperance.new(flash[:attributes])
  end

  def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages
      flash[:attributes] = @appearance.attributes
      redirect_to new_appearance_path
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest, :episode, :guest_rating)
  end

end
