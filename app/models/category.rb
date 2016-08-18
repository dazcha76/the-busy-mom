class Category < ApplicationRecord
  has_many :day_recipes
  has_many :recipes, through: :day_recipes
  has_many :days, through: :day_recipes
end
