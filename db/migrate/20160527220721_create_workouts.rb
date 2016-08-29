class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :duration
      t.text :description
      t.references :Category, landing: true, foreign_key: true
      t.references :User, landing: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
