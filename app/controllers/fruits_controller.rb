class FruitsController < ApplicationController
  def index
  end

  def new
    @fruit = Fruit.new
    # @fruit.origins.build
    # @fruit.seasons.build
  end

  def create
    @fruit = Fruit.new(fruit_params)
    if @fruit.save
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
  def fruit_params
    params.require(:fruit).permit(:name, :explain, :image, origins_attributes: [:id, :prefecture, :city],seasons_attributes: [:id, :month]).merge(user_id: current_user.id)
  end
end
