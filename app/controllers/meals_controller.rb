class MealsController < ApplicationController
  def index
    @days = Day.all
    @categories = Category.all
    @recipes = Recipe.all
    render 'index.html.erb'
  end
end
