class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.create(recipe_params)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
