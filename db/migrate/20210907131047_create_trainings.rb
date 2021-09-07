class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      
      t.string :menu
      t.integer :kg
      t.integer :count
      t.integer :set

      t.timestamps
    end
  end
end
