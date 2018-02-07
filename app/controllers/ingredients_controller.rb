class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
