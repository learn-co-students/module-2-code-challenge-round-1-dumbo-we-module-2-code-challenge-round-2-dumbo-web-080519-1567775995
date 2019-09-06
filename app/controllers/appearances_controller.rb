class AppearancesController < ActionController::Base

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end

  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    if @appearance.update(appearance_params)
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to edit_appearance_path(@appearance)
    end
  end

  def destroy
    @appearance = Appearance.find(params[:id])
    @appearance.destroy
    redirect_to appearances_path
  end

  private

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end





end
