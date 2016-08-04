class CreateFamilyMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :family_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :role
      t.integer :user_id

      t.timestamps
    end
  end
end
