class RecipesController < ApplicationController


  def new
    @recipe = Recipe.new
  end

  def show

  end

  def create
    @recipe = Recipe.create(recipe_params)
  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end

end
