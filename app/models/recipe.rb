class Recipe < ApplicationRecord
  has_many :day_recipes
  has_many :categories, through: :day_recipes
  has_many :days, through: :day_recipes

  # belongs_to :user 
  # belongs_to :family_member

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  
  
end