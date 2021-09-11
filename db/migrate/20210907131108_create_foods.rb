class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :user_id
      t.datetime :time
      t.text :eat

      t.timestamps
    end
  end
end
