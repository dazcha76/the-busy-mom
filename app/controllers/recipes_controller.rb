class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.order(:name)
  end

  def new
  end

  def create
    recipe = Recipe.create(
      name: params['name'],
      image: params['image'],
      prep_time: params['prep_time'],
      directions: params['directions']
    )
    redirect_to '/recipes'
  end

  def show
    @recipe = Recipe.find_by(id: params['id'])
    @ingredients = Ingredient.all.order(:name)
  end
end
