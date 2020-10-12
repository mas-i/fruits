class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all
  end

  def new
    @fruit = Fruit.new
    @origin = @fruit.origins.new
    @season = @fruit.seasons.new
  end

  def create
    @fruit = Fruit.new(fruit_params)
    if @fruit.save
      redirect_to root_path, notice: 'フルーツを登録しました'
    else
      render :new, notice: '登録できませんでした'
    end
  end

  def edit
  end

  def update
  end

  def show
    @fruits = Fruit.all
  end

  def destroy
  end

  def search
    @search = Fruit.ransack(params[:q])
    @fruits = @search.result(distinct: true)
  end

  private
  def fruit_params
    params.require(:fruit).permit(:name, :variety, :explain, :image, origins_attributes: [:prefecture, :city, :_destroy, :id], seasons_attributes: [:month, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
