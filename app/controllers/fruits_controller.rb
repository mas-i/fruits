class FruitsController < ApplicationController
  def index
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(fruit_params)
    if @fruit.save
      redirect_to root_path, notice: 'フルーツの新規登録が完了しました'
    else
      render :new
    end
  end
  
end
