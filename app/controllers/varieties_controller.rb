class VarietiesController < ApplicationController
  def index
  end

  def new
    @variety = Variety.new
    @origin = @variety.origins.new
    @season = @variety.seasons.new
  end

  def create
    @variety = Variety.new(variety_params)
    if @variety.save
      redirect_to root_path, notice: 'フルーツを登録しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def variety_params
    params.require(:variety).permit(:name, :explain, :image, origins_attributes: [:prefecture, :city, :_destroy, :id], seasons_attributes: [:month, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
