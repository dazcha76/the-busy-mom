class Recipe < ApplicationRecord
  belongs_to :user 
  belongs_to :family_member

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  has_many :day_recipes
  has_many :days, through: :day_recipes

  has_many :recipe_categories
  has_many :categories, through: :recipe_categories
end
