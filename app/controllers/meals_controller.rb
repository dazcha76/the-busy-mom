class MealsController < ApplicationController
  def index
    @days = Day.all.order(:id)
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
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
    redirect_to '/meals'
  end

  def show
    @day = Day.find_by(id: params['id'])
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
  end
end
