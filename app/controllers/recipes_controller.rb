class RecipesController < ApplicationController


  def new
    @recipe = Recipe.new(recipe_params)
  end

  def show

  end

  def create

  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end

end
