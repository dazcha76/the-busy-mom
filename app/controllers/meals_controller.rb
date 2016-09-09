class MealsController < ApplicationController
  def index
    @title = "#{current_user.first_name}'s Meals"
    @days = Day.all.order(:id)
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
  end

  def new
    @title = "Start Planning Your Week"
    @days = Day.all.order(:id)
    @recipes = Recipe.all
    @categories = Category.all.order(:id)
  end

  def create
    DayRecipe.destroy_all
    params[:recipe_data].each do |day_id, category_data|
      category_data.each do |category_id, recipe_array|
        day_recipe = DayRecipe.new(
            day_id: day_id,
            category_id: category_id,
            recipe_id: recipe_array[0]
          )
        day_recipe.save
      end
    end
    redirect_to '/meals'
  end

  def show
    @day = Day.find_by(id: params['id'])
    @title = "#{@day.name}'s Meals"
    @recipes = Recipe.all
    @ingredients = Ingredient.all
    @categories = Category.all.order(:id)
  end
end
