class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :measurement
      t.string :count

      t.timestamps
    end
  end
end
