class CreateFoodComments < ActiveRecord::Migration[5.2]
  def change
    create_table :food_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :food_id

      t.timestamps
    end
  end
end
