class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.integer :user_id
      t.string :menu
      t.float :kg
      t.integer :count
      t.integer :set
      t.date :date

      t.timestamps
    end
  end
end
