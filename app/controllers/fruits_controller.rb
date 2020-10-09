class FruitsController < ApplicationController
  def index
  end

  def new
    @fruit = Fruit.new
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
    params.require(:fruit).permit(:name, :explain, :image).merge(user_id: current_user.id)
  end
end
