class DayRecipe < ApplicationRecord
  belongs_to :category
  belongs_to :day
  belongs_to :recipe
end
