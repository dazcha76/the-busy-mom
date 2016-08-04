class CreateDayRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :day_recipes do |t|
      t.integer :day_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
