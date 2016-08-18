class AddIdToDayRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :day_recipes, :category_id, :integer
  end
end
