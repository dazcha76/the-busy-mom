class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prep_time
      t.string :directions
      t.string :rating
      t.string :image
      t.integer :user_id
      t.integer :family_member_id

      t.timestamps
    end
  end
end
