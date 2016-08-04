class Category < ApplicationRecord
  has_many :recipe_categories
  has_many :recipes, though: :recipe_categories
end
