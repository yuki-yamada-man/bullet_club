class FoodsController < ApplicationController
  
  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new(food_params)
    @food.save
    redirect_to finish_food_path
  end
  
  def finish
  end
  
  def index
    @foods = Food.all
  end
  
  def show
    @food = Food.find(params[:id])
  end
  
  def edit
    @food = Food.find(params[:id])
  end
  
  def update
    @find = Food.find(params[:id])
    @find.update(food_params)
    redirect_to food_path(@food.id)
  end
  
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end
  
  private
  
  def food_params
    params.require(:food).permit(:time,:eat,)
  end
  
end
