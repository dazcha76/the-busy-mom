class MealsController < ApplicationController
  def index
    @days = Day.all.order(:id)
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
  end

  def new
  end

  def create
  end

  def show
    @day = Day.find_by(id: params['id'])
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
  end
end
