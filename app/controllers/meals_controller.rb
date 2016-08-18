class MealsController < ApplicationController
  def index
    @days = Day.all.order(:id)
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
    render 'index.html.erb'
  end

  def show
    @day = Day.find_by(id: params['id'])
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
    render 'show.html.erb'
  end
end
