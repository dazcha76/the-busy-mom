class RecipesController < ApplicationController
  def index
    @title = "#{current_user.first_name}'s Recipes"
    @recipes = Recipe.all.order(:name)
  end

  def new
    @title = "Add a New Recipe"
  end

  def create
    recipe = Recipe.create(
      name: params['name'],
      image: params['image'],
      prep_time: params['prep_time'],
      directions: params['directions']
    )
    flash[:success] = 'Your recipe was successfully created!'
    redirect_to '/recipes/#{recipe.id}'
  end

  def show
    @recipe = Recipe.find_by(id: params['id'])
    @title = "#{@recipe.name}"
    @ingredients = Ingredient.all.order(:name)
  end

  def edit
    @title = "Edit Your Recipe"
    @recipe = Recipe.find_by(id: params['id'])
  end

  def update
    @recipe = Recipe.find_by(id: params['id'])
    @recipe.update(
      name: params['name'],
      image: params['image'],
      prep_time: params['prep_time'],
      directions: params['directions']
    )
    flash[:success] = 'Your recipe was successfully edited!'
    redirect_to '/recipes/#{@recipe.id}'
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    flash[:success] = 'Your recipe was successfully deleted!'
    redirect_to '/recipes'
  end
end
