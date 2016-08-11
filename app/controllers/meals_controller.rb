class MealsController < ApplicationController
  def index
    @days = Day.all
    @categories = Category.all
    @recipes = Recipe.all
    render 'index.html.erb'
  end

  def show
    @day = Day.find_by(id: params['id'])
    @categories = Category.all
    @recipes = Recipe.all
    render 'show.html.erb'
  end
end
